//
//  ScriptTable.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2018-11-18.
//

public struct ScriptTable {
    internal typealias RAWScriptTableCell = [Script: String]
    internal typealias RAWScriptTable = [RAWScriptTableCell]
    internal typealias RAWScriptDictionary = [String: RAWScriptTableCell]
    
    
    private let table: RAWScriptTable
    
    private lazy var scriptSet = table.map {$0.keys} .reduce(Set.init(Script.allCases)) {$0.intersection($1)}
    private lazy var a: [Script: RAWScriptDictionary] = Dictionary.init(
        uniqueKeysWithValues: scriptSet.map { (script) -> (Script, RAWScriptDictionary) in
            return (script, RAWScriptDictionary.init(uniqueKeysWithValues: table.map { ($0[script]!, $0) } ))
        }
    )
    
    private init(makeScriptTable: () -> RAWScriptTable) {
        table = makeScriptTable()
    }
    
    internal mutating func maxElementLength(forScript script: Script) -> Int {
        
        return a[script]?.keys.map {$0.count} .max() ?? 0
    }
    
    internal mutating func element(of targetScript: Script, from sourceElement: String, of sourceScript: Script) -> String? {
        
        
        guard a.keys.contains(sourceScript) else {
            fatalError("The script table donʼt support \(String.init(describing: sourceScript)) source script!")
        }
        
        guard a.keys.contains(targetScript) else {
            fatalError("The script table donʼt support \(String.init(describing: targetScript)) target script!")
        }
        
        guard let element = a[sourceScript]?[sourceElement]?[targetScript] else {
            return nil
        }
        
        return element
    }
    
}

public extension String {
    
    public func translating(from sourceScript: Script, to targetScript: Script, withTable scriptTable: ScriptTable) -> String {
        
        var scriptTable = scriptTable
        
        var index = 0
        var targetString: String = .init()
        
        while index < self.count {
            var sourceElementLength = scriptTable.maxElementLength(forScript: sourceScript)
            
            while true {
                
                let sourceElement: String = .init(self.dropFirst(index).prefix(sourceElementLength))
                
                if let targetElement = scriptTable.element(of: targetScript, from: sourceElement, of: sourceScript) {
                    targetString.append(targetElement)
                    break
                }
                else if sourceElementLength == 1 {
                    targetString.append(sourceElement)
                    break
                }
                
                sourceElementLength -= 1
            }
            
            index += sourceElementLength
        }
        
        return targetString
    }
}

public extension ScriptTable {
    
    public static let ru: ScriptTable = .init { () -> ScriptTable.RAWScriptTable in
        
        let baseVowelLetters: RAWScriptTable = [
            [.Latn: "a", .Cyrl: "а"],
            [.Latn: "e", .Cyrl: "э"],
            [.Latn: "i", .Cyrl: "и"],
            [.Latn: "o", .Cyrl: "о"],
            [.Latn: "u", .Cyrl: "у"],
        ]
        
        let otherVowelLetters: RAWScriptTable = [
            [.Latn: "ya", .Cyrl: "я"],
            [.Latn: "ye", .Cyrl: "е"],
            [.Latn: "yi", .Cyrl: "ы"],
            [.Latn: "yo", .Cyrl: "ё"],
            [.Latn: "yu", .Cyrl: "ю"],
        ]
        
        let consonantLetters: RAWScriptTable = [
            [.Latn: "b", .Cyrl: "б"],
            [.Latn: "c", .Cyrl: "ц"],
            [.Latn: "ch", .Cyrl: "ч"],
            [.Latn: "d", .Cyrl: "д"],
            [.Latn: "f", .Cyrl: "ф"],
            [.Latn: "g", .Cyrl: "г"],
            [.Latn: "j", .Cyrl: "й"],
            [.Latn: "k", .Cyrl: "к"],
            [.Latn: "l", .Cyrl: "л"],
            [.Latn: "m", .Cyrl: "м"],
            [.Latn: "n", .Cyrl: "н"],
            [.Latn: "p", .Cyrl: "п"],
            [.Latn: "r", .Cyrl: "р"],
            [.Latn: "s", .Cyrl: "с"],
            [.Latn: "sh", .Cyrl: "ш"],
            [.Latn: "sjh", .Cyrl: "щ"],
            [.Latn: "t", .Cyrl: "т"],
            [.Latn: "v", .Cyrl: "в"],
            [.Latn: "w", .Cyrl: "ў"],
            [.Latn: "xh", .Cyrl: "х"],
            [.Latn: "z", .Cyrl: "з"],
            [.Latn: "zh", .Cyrl: "ж"],
        ]
        
        var elements = baseVowelLetters + otherVowelLetters + consonantLetters
        
        elements.append([.Latn: "y", .Cyrl: "ъ"])
        elements += baseVowelLetters.map {[.Latn: "yʼ" + $0[.Latn]! , .Cyrl: "ъ" + $0[.Cyrl]!]}
        
        elements += consonantLetters.map {[.Latn: $0[.Latn]! + "j", .Cyrl: $0[.Cyrl]! + "ь"]}
        
        elements += consonantLetters.map {[.Latn: $0[.Latn]! + "e", .Cyrl: $0[.Cyrl]! + "е"]}
        elements += consonantLetters.map {[.Latn: $0[.Latn]! + "ye", .Cyrl: $0[.Cyrl]! + "э"]}
        
        
        elements += elements.map {[.Latn: $0[.Latn]!.capitalized, .Cyrl: $0[.Cyrl]!.capitalized]}
        
        return elements
    }
}
