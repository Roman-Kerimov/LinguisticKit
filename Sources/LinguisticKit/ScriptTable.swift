//
//  ScriptTable.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2018-11-18.
//

import Foundation

public class ScriptTable: Equatable, Hashable {
    public static func == (lhs: ScriptTable, rhs: ScriptTable) -> Bool {
        lhs === rhs
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    public static let allTables: Set<ScriptTable> = Set(
        scriptTransformationCodes
            .compactMap(\.value.scriptTableTransformation?.scriptTable)
    )
    
    public static func by(identifier: String) -> ScriptTable? {
        scriptTransformationCodes[identifier]?.scriptTableTransformation?.scriptTable
    }
    
    public let defaultScript: Script
    
    public var scripts: Set<Script> {scriptSet}
    
    struct Cell: Encodable {
        let scriptElements: [Script: String]
        
        enum ElementType: String, Encodable, CaseIterable, Comparable {
            static func < (lhs: ScriptTable.Cell.ElementType, rhs: ScriptTable.Cell.ElementType) -> Bool {
                lhs.rawValue < rhs.rawValue
            }
            
            case consonant
            case vowel
            case other
            case nonLetter
        }
        
        let type: ElementType
        
        enum ContextType: String, Encodable, CaseIterable {
            case consonant
            case vowel
            case other
            case nonLetter
            
            case any
            
            case nonConsonant
            case nonVowel
            case nonOther
            case letter
            
            var components: Set<ElementType> {
                switch self {
                case .consonant:
                    [.consonant]
                    
                case .vowel:
                    [.vowel]
                    
                case .other:
                    [.other]
                    
                case .nonLetter:
                    [.nonLetter]
                    
                case .any:
                    Set(ElementType.allCases)
                    
                case .nonConsonant:
                    Set(ElementType.allCases).subtracting([.consonant])
                    
                case .nonVowel:
                    Set(ElementType.allCases).subtracting([.vowel])
                    
                case .nonOther:
                    Set(ElementType.allCases).subtracting([.other])
                    
                case .letter:
                    Set(ElementType.allCases).subtracting([.nonLetter])
                }
            }
            
            func contains(_ elementType: ElementType) -> Bool {
                components.contains(elementType)
            }
        }
        
        let prefixContext: ContextType
        let postfixContext: ContextType
        
        enum CodingKeys: CodingKey {
            case scriptElements
            case type
            case prefixContext
            case postfixContext
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try container.encode(
                Dictionary<String, String>(uniqueKeysWithValues: scriptElements.map {($0.key.rawValue, $0.value)}),
                forKey: .scriptElements
            )
            
            try container.encode(type, forKey: .type)
            try container.encode(prefixContext, forKey: .prefixContext)
            try container.encode(postfixContext, forKey: .postfixContext)
        }
        
        init(
            _ scriptElements: [Script: String],
            type: ElementType = .other,
            prefixContext: ContextType = .any,
            postfixContext: ContextType = .any
        ) {
            self.scriptElements = scriptElements
            
            self.type = type
            self.prefixContext = prefixContext
            self.postfixContext = postfixContext
        }
        
        init(type: ElementType = .other, _ scriptElements: [Script: String]) {
            self.scriptElements = scriptElements
            
            self.type = type
            self.prefixContext = .any
            self.postfixContext = .any
        }
        
        func callAsFunction(_ script: Script, _ element: String) -> Self {
            var scriptElements = self.scriptElements
            scriptElements[script] = element
            
            return Cell(
                scriptElements,
                type: type,
                prefixContext: prefixContext,
                postfixContext: postfixContext
            )
        }
    }
    
    internal typealias RAWScriptTable = [Cell]
    internal typealias IndexedScriptTable = [String: [Cell]]
    
    public let name: String
    
    let languageCode: String
    
    private let table: RAWScriptTable
    
    private let scriptSet: Set<Script>
    
    lazy var scriptLetterSets: [Script: CharacterSet] = indexedScriptTables
        .mapValues {
            CharacterSet(charactersIn: $0.keys.joined()).subtracting(.nonBaseCharacters)
        }
    
    private lazy var indexedScriptTables: [Script: IndexedScriptTable] = Dictionary(
        uniqueKeysWithValues: scriptSet.map { (script) -> (Script, IndexedScriptTable) in
            let indexedScriptTable = IndexedScriptTable(
                table.map { ($0.scriptElements[script]!, [$0]) }
            ) {
                let combinedValues = $0 + $1
                
                let combinedValuesSet = Set(
                    combinedValues.map {"\($0.scriptElements[script]!)\($0.prefixContext)\($0.postfixContext)"}
                )
                
                guard combinedValues.count == combinedValuesSet.count else {
                    fatalError(
                        "Ambiguity in \"\(self)\" script table for \"\($0.first!.scriptElements[script]!)\"!"
                    )
                }
                
                return combinedValues
            }
            
            return (script, indexedScriptTable)
        }
    )
    
    private lazy var allScriptTable = Dictionary(indexedScriptTables.values.flatMap({$0}), uniquingKeysWith: {(lhs, _) in lhs})
    
    init(languageCode: String, defaultScript: Script, file: String = #file, makeScriptTable: () -> RAWScriptTable) {
        self.languageCode = languageCode
        self.defaultScript = defaultScript
        
        self.name = URL(string: file)!.deletingPathExtension().pathExtension
        
        let cells = makeScriptTable()
        
        let scriptSet = cells
            .map(\.scriptElements.keys)
            .reduce(Set(Script.allCases)) {
                $0.intersection($1)
            }
        
        self.table = cells.map { cell in
            Cell(
                Dictionary(uniqueKeysWithValues: scriptSet.map({($0, cell.scriptElements[$0]!)})),
                type: cell.type,
                prefixContext: cell.prefixContext,
                postfixContext: cell.postfixContext
            )
        }
        
        self.scriptSet = scriptSet
    }
    
    internal func maxElementLength(forScript script: Script) -> Int {
        if let maxElementLength = scriptMaxElementLengthDictionary[script] {
            return maxElementLength
        } else {
            scriptMaxElementLengthDictionary[script] = indexedScriptTables[script]?.keys
                .map(\.decomposedStringWithCanonicalMapping.unicodeScalars.count)
                .max() ?? 0
            
            return scriptMaxElementLengthDictionary[script]!
        }
    }
    
    private var scriptMaxElementLengthDictionary: [Script: Int] = [:]
    
    internal func element(
        of targetScript: Script,
        from sourceElement: String,
        of sourceScript: Script,
        prefixElement: String,
        postfixString: String
    ) -> String? {
        
        guard indexedScriptTables.keys.contains(sourceScript) else {
            fatalError("The script table donʼt support \(String(describing: sourceScript)) source script!")
        }
        
        guard indexedScriptTables.keys.contains(targetScript) else {
            fatalError("The script table donʼt support \(String(describing: targetScript)) target script!")
        }
        
        let targetScriptCells: [Cell]
        let graphemeExtend: String
        
        if let cells = indexedScriptTables[sourceScript]?[sourceElement] {
            targetScriptCells = cells
            graphemeExtend = ""
        } else {
            let sourceUnicodeScalars = sourceElement.decomposedStringWithCanonicalMapping.unicodeScalars
            
            graphemeExtend = String(sourceUnicodeScalars.filter {$0.properties.isGraphemeExtend})
            
            if let _ = indexedScriptTables[sourceScript]?[graphemeExtend] {
                return nil
            }
            
            let sourceBase = String(sourceUnicodeScalars.filter({!$0.properties.isGraphemeExtend}))
            
            guard let cells = indexedScriptTables[sourceScript]?[sourceBase] else {
                return nil
            }
            
            targetScriptCells = cells
        }
        
        func elementType(of element: String) -> Cell.ElementType? {
            func optionalContextType(element: String) -> Cell.ElementType? {
                allScriptTable[element.lowercased(with: locale(script: sourceScript))]?.first?.type
            }
            
            return optionalContextType(element: element)
            ?? optionalContextType(
                element: element.unicodeScalars
                    .filter {!$0.properties.isGraphemeExtend}
                    .description
            )
        }
        
        func elementTypeOfFirstElement(in string: String) -> Cell.ElementType {
            var maxLength = maxElementLength(forScript: sourceScript)
            
            while maxLength > 0 {
                if let contextType = elementType(of: String(string.prefix(maxLength))) {
                    return contextType
                } else {
                    maxLength -= 1
                }
            }
            
            return .nonLetter
        }
        
        let target = targetScriptCells
            .filter {
                $0.prefixContext.contains(elementType(of: prefixElement) ?? .nonLetter)
                && $0.postfixContext.contains(elementTypeOfFirstElement(in: postfixString))
            }
            .first?
            .scriptElements[targetScript]
        
        guard var target = target else {
            return nil
        }
        
        if target.count > 1, target.hasSuffix("h") {
            target.insert(contentsOf: graphemeExtend, at: target.index(after: target.startIndex))
        } else {
            target.append(graphemeExtend)
        }
        
        return target
    }
    
    func locale(script: Script) -> Locale {
        Locale(identifier: [languageCode, script.rawValue].joined(separator: "_"))
    }

}

extension ScriptTable: CustomStringConvertible {
    public var description: String {
        languageCode
    }
}

extension ScriptTable: Encodable {
    
    enum CodingKeys: CodingKey {
        case name
        case languageCode
        case defaultScript
        case table
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(languageCode, forKey: .languageCode)
        try container.encode(defaultScript, forKey: .defaultScript)
        try container.encode(table, forKey: .table)
    }
}
