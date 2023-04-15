//
//  ScriptTable.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2018-11-18.
//

import Foundation

public class ScriptTable: Equatable {
    public static func == (lhs: ScriptTable, rhs: ScriptTable) -> Bool {
        lhs === rhs
    }
    
    public static func by(identifier: String) -> ScriptTable? {
        scriptTransformationCodes[identifier]?.scriptTableTransformation?.scriptTable
    }
    
    public let defaultScript: Script
    
    public var scripts: Set<Script> {scriptSet}
    
    struct ContextType: OptionSet {
        let rawValue: Int
        
        static let consonant = ContextType(rawValue: 1 << 0)
        static let vowel = ContextType(rawValue: 1 << 1)
        static let other = ContextType(rawValue: 1 << 2)
        static let nonLetter = ContextType(rawValue: 1 << 3)
        
        static let any: ContextType = [.consonant, .vowel, .other, nonLetter]
        
        static let nonConsonant = ContextType.any.subtracting(.consonant)
        static let nonVowel = ContextType.any.subtracting(.vowel)
        static let nonOther = ContextType.any.subtracting(.other)
        static let letter = ContextType.any.subtracting(.nonLetter)
    }
    
    struct Cell {
        let scriptElements: [Script: String]
        
        let type: ContextType
        let prefixContext: ContextType
        let postfixContext: ContextType
        
        init(
            _ scriptElements: [Script: String],
            type: ContextType = .other,
            prefixContext: ContextType = .any,
            postfixContext: ContextType = .any
        ) {
            self.scriptElements = scriptElements
            
            self.type = type
            self.prefixContext = prefixContext
            self.postfixContext = postfixContext
        }
        
        init(type: ContextType = .other, _ scriptElements: [Script: String]) {
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
    
    let languageCode: String
    
    private let table: RAWScriptTable
    
    private lazy var scriptSet = table
        .map(\.scriptElements.keys)
        .reduce(Set(Script.allCases)) {
            $0.intersection($1)
        }
    
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
    
    init(languageCode: String, defaultScript: Script, makeScriptTable: () -> RAWScriptTable) {
        self.languageCode = languageCode
        self.defaultScript = defaultScript
        table = makeScriptTable()
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
        
        func contextType(of element: String) -> ContextType? {
            func optionalContextType(element: String) -> ContextType? {
                allScriptTable[element.lowercased(with: locale(script: sourceScript))]?.first?.type
            }
            
            return optionalContextType(element: element)
            ?? optionalContextType(
                element: element.unicodeScalars
                    .filter {!$0.properties.isGraphemeExtend}
                    .description
            )
        }
        
        func contextTypeOfFirstElement(in string: String) -> ContextType {
            var maxLength = maxElementLength(forScript: sourceScript)
            
            while maxLength > 0 {
                if let contextType = contextType(of: String(string.prefix(maxLength))) {
                    return contextType
                } else {
                    maxLength -= 1
                }
            }
            
            return .nonLetter
        }
        
        let target = targetScriptCells
            .filter {
                $0.prefixContext.contains(contextType(of: prefixElement) ?? .nonLetter)
                && $0.postfixContext.contains(contextTypeOfFirstElement(in: postfixString))
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
