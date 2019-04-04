//
//  ScriptTable.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2018-11-18.
//

public class ScriptTable {
    internal typealias RAWScriptTableCell = [Script: String]
    internal typealias RAWScriptTable = [RAWScriptTableCell]
    internal typealias IndexedScriptTable = [String: RAWScriptTableCell]
    
    let languageCode: String
    private let table: RAWScriptTable
    
    private lazy var scriptSet = table.map {$0.keys} .reduce(Set.init(Script.allCases)) {$0.intersection($1)}
    lazy var scriptLetterSets: [Script: Set<Character>] = idexedScriptTables.mapValues {.init($0.keys.joined())}
    private lazy var idexedScriptTables: [Script: IndexedScriptTable] = Dictionary.init(
        uniqueKeysWithValues: scriptSet.map { (script) -> (Script, IndexedScriptTable) in
            return (script, IndexedScriptTable.init(uniqueKeysWithValues: table.map { ($0[script]!, $0) } ))
        }
    )
    
    init(languageCode: String, makeScriptTable: () -> RAWScriptTable) {
        self.languageCode = languageCode
        table = makeScriptTable()
    }
    
    internal func maxElementLength(forScript script: Script) -> Int {
        
        return idexedScriptTables[script]?.keys.map {$0.count} .max() ?? 0
    }
    
    internal func element(of targetScript: Script, from sourceElement: String, of sourceScript: Script) -> String? {
        
        
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

extension ScriptTable.RAWScriptTableCell {
    static let a: ScriptTable.RAWScriptTableCell = [.Latn: "a", .Cyrl: "а", .Glag: "ⰰ"]
    static let b: ScriptTable.RAWScriptTableCell = [.Latn: "b", .Cyrl: "б", .Glag: "ⰱ"]
    static let d: ScriptTable.RAWScriptTableCell = [.Latn: "d", .Cyrl: "д", .Glag: "ⰴ"]
    static let e: ScriptTable.RAWScriptTableCell = [.Latn: "e", .Cyrl: "е", .Glag: "ⰵ"]
    static let f: ScriptTable.RAWScriptTableCell = [.Latn: "f", .Cyrl: "ф", .Glag: "ⱇ"]
    static let g: ScriptTable.RAWScriptTableCell = [.Latn: "g", .Cyrl: "г", .Glag: "ⰳ"]
    static let h: ScriptTable.RAWScriptTableCell = [.Latn: "h", .Cyrl: "һ", .Glag: "һ"]
    static let i: ScriptTable.RAWScriptTableCell = [.Latn: "i", .Cyrl: "и", .Glag: "ⰹ"]
    static let j: ScriptTable.RAWScriptTableCell = [.Latn: "j", .Cyrl: "й", .Glag: "ⰻ"]
    static let k: ScriptTable.RAWScriptTableCell = [.Latn: "k", .Cyrl: "к", .Glag: "ⰽ"]
    static let l: ScriptTable.RAWScriptTableCell = [.Latn: "l", .Cyrl: "л", .Glag: "ⰾ"]
    static let m: ScriptTable.RAWScriptTableCell = [.Latn: "m", .Cyrl: "м", .Glag: "ⰿ"]
    static let n: ScriptTable.RAWScriptTableCell = [.Latn: "n", .Cyrl: "н", .Glag: "ⱀ"]
    static let o: ScriptTable.RAWScriptTableCell = [.Latn: "o", .Cyrl: "о", .Glag: "ⱁ"]
    static let p: ScriptTable.RAWScriptTableCell = [.Latn: "p", .Cyrl: "п", .Glag: "ⱂ"]
    static let r: ScriptTable.RAWScriptTableCell = [.Latn: "r", .Cyrl: "р", .Glag: "ⱃ"]
    static let s: ScriptTable.RAWScriptTableCell = [.Latn: "s", .Cyrl: "с", .Glag: "ⱄ"]
    static let t: ScriptTable.RAWScriptTableCell = [.Latn: "t", .Cyrl: "т", .Glag: "ⱅ"]
    static let u: ScriptTable.RAWScriptTableCell = [.Latn: "u", .Cyrl: "у", .Glag: "ⱆ"]
    static let v: ScriptTable.RAWScriptTableCell = [.Latn: "v", .Cyrl: "в", .Glag: "ⰲ"]
    static let w: ScriptTable.RAWScriptTableCell = [.Latn: "w", .Cyrl: "ў", .Glag: "ў"]
    static let x: ScriptTable.RAWScriptTableCell = [.Latn: "x", .Cyrl: "ѯ", .Glag: "ѯ"]
    static let y: ScriptTable.RAWScriptTableCell = [.Latn: "y", .Cyrl: "ѵ", .Glag: "ⱛ"]
    static let z: ScriptTable.RAWScriptTableCell = [.Latn: "z", .Cyrl: "з", .Glag: "ⰸ"]
}
