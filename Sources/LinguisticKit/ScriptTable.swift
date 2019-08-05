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
    static let a: Self = [.Latn: "a", .Cyrl: "а", .Glag: "ⰰ"]
    static let b: Self = [.Latn: "b", .Cyrl: "б", .Glag: "ⰱ"]
    static let d: Self = [.Latn: "d", .Cyrl: "д", .Glag: "ⰴ"]
    static let e: Self = [.Latn: "e", .Cyrl: "е", .Glag: "ⰵ"]
    static let f: Self = [.Latn: "f", .Cyrl: "ф", .Glag: "ⱇ"]
    static let g: Self = [.Latn: "g", .Cyrl: "г", .Glag: "ⰳ"]
    static let h: Self = [.Latn: "h", .Cyrl: "һ", .Glag: "һ"]
    static let i: Self = [.Latn: "i", .Cyrl: "и", .Glag: "ⰹ"]
    static let j: Self = [.Latn: "j", .Cyrl: "й", .Glag: "ⰻ"]
    static let k: Self = [.Latn: "k", .Cyrl: "к", .Glag: "ⰽ"]
    static let l: Self = [.Latn: "l", .Cyrl: "л", .Glag: "ⰾ"]
    static let m: Self = [.Latn: "m", .Cyrl: "м", .Glag: "ⰿ"]
    static let n: Self = [.Latn: "n", .Cyrl: "н", .Glag: "ⱀ"]
    static let o: Self = [.Latn: "o", .Cyrl: "о", .Glag: "ⱁ"]
    static let p: Self = [.Latn: "p", .Cyrl: "п", .Glag: "ⱂ"]
    static let r: Self = [.Latn: "r", .Cyrl: "р", .Glag: "ⱃ"]
    static let s: Self = [.Latn: "s", .Cyrl: "с", .Glag: "ⱄ"]
    static let t: Self = [.Latn: "t", .Cyrl: "т", .Glag: "ⱅ"]
    static let u: Self = [.Latn: "u", .Cyrl: "у", .Glag: "ⱆ"]
    static let v: Self = [.Latn: "v", .Cyrl: "в", .Glag: "ⰲ"]
    static let w: Self = [.Latn: "w", .Cyrl: "ў", .Glag: "ў"]
    static let x: Self = [.Latn: "x", .Cyrl: "ѯ", .Glag: "ѯ"]
    static let y: Self = [.Latn: "y", .Cyrl: "ѵ", .Glag: "ⱛ"]
    static let z: Self = [.Latn: "z", .Cyrl: "з", .Glag: "ⰸ"]
}
