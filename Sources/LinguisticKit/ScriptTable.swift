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
        scriptTransformationTargetCodes[identifier]?.scriptTable
    }
    
    public let defaultScript: Script
    
    public var scripts: Set<Script> {scriptSet}
    
    struct ContextType: OptionSet {
        let rawValue: Int
        
        static let consonant: Self = .init(rawValue: 1 << 0)
        static let vowel: Self = .init(rawValue: 1 << 1)
        static let other: Self = .init(rawValue: 1 << 2)
        static let nonLetter: Self = .init(rawValue: 1 << 3)
        
        static let any: Self = [.consonant, .vowel, .other, nonLetter]
        
        static let nonConsonant = Self.any.subtracting(.consonant)
        static let nonVowel = Self.any.subtracting(.vowel)
        static let nonOther = Self.any.subtracting(.other)
        static let letter = Self.any.subtracting(.nonLetter)
    }
    
    struct Cell {
        let scriptElements: [Script: String]
        
        let type: ContextType
        let prefixContext: ContextType
        let postfixContext: ContextType
        
        init(_ scriptElements: [Script: String], type: ContextType = .other, prefixContext: ContextType = .any, postfixContext: ContextType = .any) {
            self.scriptElements = scriptElements
            
            self.type = type
            self.prefixContext = prefixContext
            self.postfixContext = postfixContext
        }
    }
    
    internal typealias RAWScriptTable = [Cell]
    internal typealias IndexedScriptTable = [String: [Cell]]
    
    let languageCode: String
    private let table: RAWScriptTable
    
    private lazy var scriptSet = table.map {$0.scriptElements.keys} .reduce(Set.init(Script.allCases)) {$0.intersection($1)}
    lazy var scriptLetterSets: [Script: CharacterSet] = indexedScriptTables.mapValues {CharacterSet(charactersIn: $0.keys.joined()).subtracting(.nonBaseCharacters)}
    private lazy var indexedScriptTables: [Script: IndexedScriptTable] = Dictionary.init(
        uniqueKeysWithValues: scriptSet.map { (script) -> (Script, IndexedScriptTable) in
            return (
                script,
                IndexedScriptTable(table.map { ($0.scriptElements[script]!, [$0]) }, uniquingKeysWith: {
                    let combinedValues = $0 + $1
                    
                    guard combinedValues.count == Set(combinedValues.map {"\($0.scriptElements[script]!)\($0.prefixContext)\($0.postfixContext)"}).count else {
                        fatalError("Ambiguity in \"\(self)\" script table for \"\($0.first!.scriptElements[script]!)\"!")
                    }
                    
                    return combinedValues
                })
            )
        }
    )
    
    init(languageCode: String, defaultScript: Script, makeScriptTable: () -> RAWScriptTable) {
        self.languageCode = languageCode
        self.defaultScript = defaultScript
        table = makeScriptTable()
    }
    
    internal func maxElementLength(forScript script: Script) -> Int {
        return indexedScriptTables[script]?.keys.map {$0.decomposedStringWithCanonicalMapping.unicodeScalars.count} .max() ?? 0
    }
    
    internal func element(of targetScript: Script, from sourceElement: String, of sourceScript: Script, prefixElement: String, postfixElement: String) -> String? {
        
        
        guard indexedScriptTables.keys.contains(sourceScript) else {
            fatalError("The script table donʼt support \(String.init(describing: sourceScript)) source script!")
        }
        
        guard indexedScriptTables.keys.contains(targetScript) else {
            fatalError("The script table donʼt support \(String.init(describing: targetScript)) target script!")
        }
        
        let targetScriptCells: [Cell]
        let graphemeExtend: String
        
        if let cells = indexedScriptTables[sourceScript]?[sourceElement] {
            targetScriptCells = cells
            graphemeExtend = .init()
        }
        else {
            let sourceUnicodeScalars = sourceElement.decomposedStringWithCanonicalMapping.unicodeScalars
            
            graphemeExtend = .init(sourceUnicodeScalars.filter({$0.properties.isGraphemeExtend}))
            
            if let _ = indexedScriptTables[sourceScript]?[graphemeExtend] {
                return nil
            }
            
            let sourceBase = String(sourceUnicodeScalars.filter({!$0.properties.isGraphemeExtend}))
            
            guard let cells = indexedScriptTables[sourceScript]?[sourceBase] else {
                return nil
            }
            
            targetScriptCells = cells
        }
            
        func context(of element: String) -> ContextType {
            func optionalContextType(element: String) -> ContextType? {
                indexedScriptTables[sourceScript]?[element.lowercased(with: locale(script: sourceScript))]?.first?.type
            }
            
            return optionalContextType(element: element)
                ?? optionalContextType(element: String(element.unicodeScalars.filter({!$0.properties.isGraphemeExtend})))
                ?? .nonLetter
        }
        
        guard var target = targetScriptCells.filter({$0.prefixContext.contains(context(of: prefixElement)) && $0.postfixContext.contains(context(of: postfixElement))}) .first?.scriptElements[targetScript] else {
            return nil
        }
        
        if target.count > 1, target.hasSuffix("h") {
            target
                .insert(
                    contentsOf: graphemeExtend,
                    at: target.index(after: target.startIndex)
                )
        }
        else {
            target.append(graphemeExtend)
        }
        
        return target
    }
    
    func locale(script: Script) -> Locale {
        return Locale.init(identifier: [languageCode, script.rawValue].joined(separator: "_"))
    }

}

extension ScriptTable: CustomStringConvertible {
    public var description: String {
        return languageCode
    }
}
