//
//  ScriptTable.ru.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-03-20.
//

public extension ScriptTable {
    
    static let ru: ScriptTable = .init { () -> ScriptTable.RAWScriptTable in
        
        let baseVowelLetters: RAWScriptTable = [
            [.Latn: "a", .Cyrl: "а", .Glag: "ⰰ"],
            [.Latn: "e", .Cyrl: "э", .Glag: "ⱔ"],
            [.Latn: "i", .Cyrl: "и", .Glag: "ⰹ"],
            [.Latn: "o", .Cyrl: "о", .Glag: "ⱁ"],
            [.Latn: "u", .Cyrl: "у", .Glag: "ⱆ"],
        ]
        
        let otherVowelLetters: RAWScriptTable = [
            [.Latn: "ya", .Cyrl: "я", .Glag: "ⱑ"],
            [.Latn: "ye", .Cyrl: "е", .Glag: "ⰵ"],
            [.Latn: "yi", .Cyrl: "ы", .Glag: "ⱏⰹ"],
            [.Latn: "yo", .Cyrl: "ё", .Glag: "ⱖ"],
            [.Latn: "yu", .Cyrl: "ю", .Glag: "ⱓ"],
        ]
        
        let consonantLetters: RAWScriptTable = [
            [.Latn: "b", .Cyrl: "б", .Glag: "ⰱ"],
            [.Latn: "c", .Cyrl: "ц", .Glag: "ⱌ"],
            [.Latn: "ch", .Cyrl: "ч", .Glag: "ⱍ"],
            [.Latn: "d", .Cyrl: "д", .Glag: "ⰴ"],
            [.Latn: "dh", .Cyrl: "ҙ", .Glag: "ҙ"],
            [.Latn: "f", .Cyrl: "ф", .Glag: "ⱇ"],
            [.Latn: "g", .Cyrl: "г", .Glag: "ⰳ"],
            [.Latn: "gh", .Cyrl: "ғ", .Glag: "ғ"],
            [.Latn: "h", .Cyrl: "һ", .Glag: "һ"],
            [.Latn: "k", .Cyrl: "к", .Glag: "ⰽ"],
            [.Latn: "l", .Cyrl: "л", .Glag: "ⰾ"],
            [.Latn: "m", .Cyrl: "м", .Glag: "ⰿ"],
            [.Latn: "n", .Cyrl: "н", .Glag: "ⱀ"],
            [.Latn: "p", .Cyrl: "п", .Glag: "ⱂ"],
            [.Latn: "q", .Cyrl: "қ", .Glag: "қ"],
            [.Latn: "r", .Cyrl: "р", .Glag: "ⱃ"],
            [.Latn: "s", .Cyrl: "с", .Glag: "ⱄ"],
            [.Latn: "sh", .Cyrl: "ш", .Glag: "ⱎ"],
            [.Latn: "sjh", .Cyrl: "щ", .Glag: "ⱋ"],
            [.Latn: "t", .Cyrl: "т", .Glag: "ⱅ"],
            [.Latn: "th", .Cyrl: "ѳ", .Glag: "ⱚ"],
            [.Latn: "v", .Cyrl: "в", .Glag: "ⰲ"],
            [.Latn: "w", .Cyrl: "ў", .Glag: "ў"],
            [.Latn: "x", .Cyrl: "ѯ", .Glag: "ѯ"],
            [.Latn: "xh", .Cyrl: "х", .Glag: "ⱈ"],
            [.Latn: "z", .Cyrl: "з", .Glag: "ⰸ"],
            [.Latn: "zh", .Cyrl: "ж", .Glag: "ⰶ"],
            [.Latn: "zjh", .Cyrl: "җ", .Glag: "җ"],
        ]
        
        let otherLetters: RAWScriptTable = [
            [.Latn: "hj", .Cyrl: "ь", .Glag: "ⱐ"],
            [.Latn: "hy", .Cyrl: "ъ", .Glag: "ⱏ"],
        ]
        
        var vowelElements = baseVowelLetters + otherVowelLetters
        
        let consonantPrefix = consonantLetters + [[.Latn: "", .Cyrl: "", .Glag: ""]]
       
        vowelElements += consonantPrefix.flatMap { (consonant) -> RAWScriptTable in
            
            return baseVowelLetters.map { (vowel) -> RAWScriptTableCell in
                return [
                    .Latn: consonant[.Latn]! + "yh" + vowel[.Latn]!,
                    .Cyrl: consonant[.Cyrl]! + "ъ" + vowel[.Cyrl]!,
                    .Glag: consonant[.Glag]! + "ⱏⱜ" + vowel[.Glag]!
                ]
            }
        }
        
        vowelElements += otherLetters.flatMap { (sign) -> RAWScriptTable in
            
            return otherVowelLetters.map { (vowel) -> RAWScriptTableCell in
                return [
                    .Latn: sign[.Latn]! + vowel[.Latn]!,
                    .Cyrl: sign[.Cyrl]! + vowel[.Cyrl]!,
                    .Glag: sign[.Glag]! + vowel[.Glag]!
                ]
            }
        }
        
        vowelElements += consonantLetters.flatMap { (consonant) -> RAWScriptTable in
            let vovelSuffix = otherVowelLetters.filter {$0[.Latn] != "ye"} + [[.Latn: "ye", .Cyrl: "э", .Glag: "ⱔ"], [.Latn: "e", .Cyrl: "е", .Glag: "ⰵ"]]
            
            return vovelSuffix.map { (vowel) -> RAWScriptTableCell in
                return [
                    .Latn: consonant[.Latn]! + vowel[.Latn]!,
                    .Cyrl: consonant[.Cyrl]! + vowel[.Cyrl]!,
                    .Glag: consonant[.Glag]! + vowel[.Glag]!
                ]
            }
        }
        vowelElements += vowelElements.map {[.Latn: $0[.Latn]! + "́", .Cyrl: $0[.Cyrl]! + "́", .Glag: $0[.Glag]! + "́"]}
        vowelElements += vowelElements.map {[.Latn: $0[.Latn]! + "̀", .Cyrl: $0[.Cyrl]! + "̀", .Glag: $0[.Glag]! + "̀"]}
        
        
        var elements = vowelElements + consonantLetters + otherLetters
        
        elements.append([.Latn: "j", .Cyrl: "й", .Glag: "ⰻ"])
        elements.append([.Latn: "y", .Cyrl: "ѵ", .Glag: "ⱛ"])
        elements += consonantLetters.filter {$0[.Latn] != "h"}.map {[.Latn: $0[.Latn]! + "j", .Cyrl: $0[.Cyrl]! + "ь", .Glag: $0[.Glag]! + "ⱐ"]}
        elements += consonantLetters.filter {$0[.Latn] != "h"}.map {[.Latn: $0[.Latn]! + "y", .Cyrl: $0[.Cyrl]! + "ъ", .Glag: $0[.Glag]! + "ⱏ"]}
        elements += consonantLetters.map {[.Latn: $0[.Latn]! + "yj", .Cyrl: $0[.Cyrl]! + "й", .Glag: $0[.Glag]! + "ⰻ"]}
        
        
        return elements
    }
}

