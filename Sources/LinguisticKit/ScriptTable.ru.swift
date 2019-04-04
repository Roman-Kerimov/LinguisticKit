//
//  ScriptTable.ru.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-03-20.
//

public extension ScriptTable {
    
    static let ru: ScriptTable = .init(languageCode: "ru") { () -> ScriptTable.RAWScriptTable in
        
        let baseVowelLetters: RAWScriptTable = [
            .a,
            [.Latn: "e", .Cyrl: "э", .Glag: "ⱔ"],
            .i,
            .o,
            .u,
        ]
        
        let otherVowelLetters: RAWScriptTable = [
            [.Latn: "ya", .Cyrl: "я", .Glag: "ⱑ"],
            [.Latn: "ye", .Cyrl: "е", .Glag: "ⰵ"],
            [.Latn: "yi", .Cyrl: "ы", .Glag: "ⱏⰹ"],
            [.Latn: "yo", .Cyrl: "ё", .Glag: "ⱖ"],
            [.Latn: "yu", .Cyrl: "ю", .Glag: "ⱓ"],
        ]
        
        let consonantLetters: RAWScriptTable = [
            .b,
            [.Latn: "c", .Cyrl: "ц", .Glag: "ⱌ"],
            [.Latn: "ch", .Cyrl: "ч", .Glag: "ⱍ"],
            .d,
            [.Latn: "dh", .Cyrl: "ҙ", .Glag: "ҙ"],
            .f,
            .g,
            [.Latn: "gh", .Cyrl: "ғ", .Glag: "ғ"],
            .h,
            .k,
            .l,
            .m,
            .n,
            .p,
            [.Latn: "q", .Cyrl: "қ", .Glag: "қ"],
            .r,
            .s,
            [.Latn: "sh", .Cyrl: "ш", .Glag: "ⱎ"],
            [.Latn: "sjh", .Cyrl: "щ", .Glag: "ⱋ"],
            .t,
            [.Latn: "th", .Cyrl: "ѳ", .Glag: "ⱚ"],
            .v,
            .w,
            .x,
            [.Latn: "xh", .Cyrl: "х", .Glag: "ⱈ"],
            .z,
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
        
        elements.append(.j)
        elements.append(.y)
        elements += consonantLetters.filter {$0[.Latn] != "h"}.map {[.Latn: $0[.Latn]! + "j", .Cyrl: $0[.Cyrl]! + "ь", .Glag: $0[.Glag]! + "ⱐ"]}
        elements += consonantLetters.filter {$0[.Latn] != "h"}.map {[.Latn: $0[.Latn]! + "y", .Cyrl: $0[.Cyrl]! + "ъ", .Glag: $0[.Glag]! + "ⱏ"]}
        elements += consonantLetters.map {[.Latn: $0[.Latn]! + "yj", .Cyrl: $0[.Cyrl]! + "й", .Glag: $0[.Glag]! + "ⰻ"]}
        
        
        return elements
    }
}

