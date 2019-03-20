//
//  ScriptTable.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2018-11-18.
//

public struct ScriptTable {
    internal typealias RAWScriptTableCell = [Script: String]
    internal typealias RAWScriptTable = [RAWScriptTableCell]
    internal typealias IndexedScriptTable = [String: RAWScriptTableCell]
    
    
    private let table: RAWScriptTable
    
    private lazy var scriptSet = table.map {$0.keys} .reduce(Set.init(Script.allCases)) {$0.intersection($1)}
    private lazy var idexedScriptTables: [Script: IndexedScriptTable] = Dictionary.init(
        uniqueKeysWithValues: scriptSet.map { (script) -> (Script, IndexedScriptTable) in
            return (script, IndexedScriptTable.init(uniqueKeysWithValues: table.map { ($0[script]!, $0) } ))
        }
    )
    
    init(makeScriptTable: () -> RAWScriptTable) {
        table = makeScriptTable()
    }
    
    internal mutating func maxElementLength(forScript script: Script) -> Int {
        
        return idexedScriptTables[script]?.keys.map {$0.count} .max() ?? 0
    }
    
    internal mutating func element(of targetScript: Script, from sourceElement: String, of sourceScript: Script) -> String? {
        
        
        guard idexedScriptTables.keys.contains(sourceScript) else {
            fatalError("The script table donʼt support \(String.init(describing: sourceScript)) source script!")
        }
        
        guard idexedScriptTables.keys.contains(targetScript) else {
            fatalError("The script table donʼt support \(String.init(describing: targetScript)) target script!")
        }
        
        guard let element = idexedScriptTables[sourceScript]?[sourceElement]?[targetScript] else {
            return nil
        }
        
        return element
    }
    
}
