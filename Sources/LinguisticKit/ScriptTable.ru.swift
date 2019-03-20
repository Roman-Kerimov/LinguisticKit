//
//  ScriptTable.ru.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-03-20.
//

public extension ScriptTable {
    
    static let ru: ScriptTable = .init { () -> ScriptTable.RAWScriptTable in
        
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
            [.Latn: "dh", .Cyrl: "ҙ"],
            [.Latn: "f", .Cyrl: "ф"],
            [.Latn: "g", .Cyrl: "г"],
            [.Latn: "gh", .Cyrl: "ғ"],
            [.Latn: "h", .Cyrl: "һ"],
            [.Latn: "k", .Cyrl: "к"],
            [.Latn: "l", .Cyrl: "л"],
            [.Latn: "m", .Cyrl: "м"],
            [.Latn: "n", .Cyrl: "н"],
            [.Latn: "p", .Cyrl: "п"],
            [.Latn: "q", .Cyrl: "қ"],
            [.Latn: "r", .Cyrl: "р"],
            [.Latn: "s", .Cyrl: "с"],
            [.Latn: "sh", .Cyrl: "ш"],
            [.Latn: "sjh", .Cyrl: "щ"],
            [.Latn: "t", .Cyrl: "т"],
            [.Latn: "th", .Cyrl: "ѳ"],
            [.Latn: "v", .Cyrl: "в"],
            [.Latn: "w", .Cyrl: "ў"],
            [.Latn: "x", .Cyrl: "ѯ"],
            [.Latn: "xh", .Cyrl: "х"],
            [.Latn: "z", .Cyrl: "з"],
            [.Latn: "zh", .Cyrl: "ж"],
            [.Latn: "zjh", .Cyrl: "җ"],
        ]
        
        var vowelElements = baseVowelLetters + otherVowelLetters
        
        vowelElements += baseVowelLetters.map {[.Latn: "yh" + $0[.Latn]! , .Cyrl: "ъ" + $0[.Cyrl]!]}
        
        vowelElements += consonantLetters.map {[.Latn: $0[.Latn]! + "e", .Cyrl: $0[.Cyrl]! + "е"]}
        vowelElements += consonantLetters.map {[.Latn: $0[.Latn]! + "ye", .Cyrl: $0[.Cyrl]! + "э"]}
        
        vowelElements += vowelElements.map {[.Latn: $0[.Latn]! + "́", .Cyrl: $0[.Cyrl]! + "́"]}
        vowelElements += vowelElements.map {[.Latn: $0[.Latn]! + "̀", .Cyrl: $0[.Cyrl]! + "̀"]}
        
        
        var elements = vowelElements + consonantLetters
        
        elements.append([.Latn: "j", .Cyrl: "й"])
        
        elements.append([.Latn: "y", .Cyrl: "ъ"])
        elements += consonantLetters.map {[.Latn: $0[.Latn]! + "j", .Cyrl: $0[.Cyrl]! + "ь"]}
        elements += consonantLetters.map {[.Latn: $0[.Latn]! + "yj", .Cyrl: $0[.Cyrl]! + "й"]}
        
        
        return elements
    }
}

