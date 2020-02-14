//
//  ScriptTable.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2018-11-18.
//

import Foundation

public class ScriptTable {
    
    struct ContextType: OptionSet {
        let rawValue: Int
        
        static let consonant: Self = .init(rawValue: 1 << 0)
        static let vowel: Self = .init(rawValue: 1 << 1)
        static let other: Self = .init(rawValue: 1 << 2)
        
        static let any: Self = [.consonant, .vowel, .other]
        
        static let nonConsonant = Self.any.subtracting(.consonant)
        static let nonVowel = Self.any.subtracting(.vowel)
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
            return (script, IndexedScriptTable.init(table.map { ($0.scriptElements[script]!, [$0]) }, uniquingKeysWith: {$0 + $1}))
        }
    )
    
    init(languageCode: String, makeScriptTable: () -> RAWScriptTable) {
        self.languageCode = languageCode
        table = makeScriptTable()
    }
    
    internal func maxElementLength(forScript script: Script) -> Int {
        
        return indexedScriptTables[script]?.keys.map {$0.count} .max() ?? 0
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
            
            guard sourceUnicodeScalars.last?.properties.isGraphemeExtend == true,
                let grapehmeExtendIndex = sourceUnicodeScalars.lastIndex(where: {$0.properties.isGraphemeExtend}) else {
                    
                return nil
            }
            
            graphemeExtend = .init(sourceUnicodeScalars.suffix(from: grapehmeExtendIndex))
            
            guard let cells = indexedScriptTables[sourceScript]?[.init(sourceUnicodeScalars.dropLast(graphemeExtend.unicodeScalars.count))] else {
                return nil
            }
            
            targetScriptCells = cells
        }
        
        if targetScriptCells.count == 1 {
            return targetScriptCells.first!.scriptElements[targetScript]?.appending(graphemeExtend)
        }
        else {
            
            func context(of element: String) -> ContextType {
                return indexedScriptTables[sourceScript]?[element.lowercased(with: locale(script: sourceScript))]?.first?.type ?? .other
            }
            
            return targetScriptCells.filter {$0.prefixContext.contains(context(of: prefixElement)) && $0.postfixContext.contains(context(of: postfixElement))} .first!.scriptElements[targetScript]?.appending(graphemeExtend)
        }
    }
    
    func locale(script: Script) -> Locale {
        return Locale.init(identifier: [languageCode, script.identifier].joined(separator: "_"))
    }

}
