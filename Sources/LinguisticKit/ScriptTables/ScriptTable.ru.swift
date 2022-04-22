//
//  ScriptTable.ru.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-03-20.
//

public extension ScriptTable {
    static let ru = ScriptTable(languageCode: "ru", defaultScript: .Cyrl) {
        .a
        .cell([.Latn: "ya", .Cyrl: "я", .Glag: "ⱑ"])
        .b
        .c
        .ch
        .d
        .cell([.Latn: "dh", .Cyrl: "ҙ", .Glag: "ҙ"], type: .consonant)
        .cell([.Latn: "e", .Cyrl: "э", .Glag: "ⱔ"], type: .vowel, prefixContext: .nonConsonant)
        .cell([.Latn: "e", .Cyrl: "е", .Glag: "ⰵ"], prefixContext: .consonant)
        .cell([.Latn: "ye", .Cyrl: "е", .Glag: "ⰵ"], prefixContext: .nonConsonant)
        .cell([.Latn: "ye", .Cyrl: "э", .Glag: "ⱔ"], prefixContext: .consonant)
        .f
        .g
        .cell([.Latn: "gh", .Cyrl: "ғ", .Glag: "ғ"], type: .consonant)
        .h
        .i
        .cell([.Latn: "yi", .Cyrl: "ы", .Glag: "ⱏⰹ"])
        .cell([.Latn: "j", .Cyrl: "й", .Glag: "ⰻ"], type: .vowel, prefixContext: .nonConsonant)
        .cell([.Latn: "j", .Cyrl: "ь", .Glag: "ⱐ"], type: .vowel, prefixContext: .consonant)
        .cell([.Latn: "hj", .Cyrl: "ь", .Glag: "ⱐ"], type: .vowel, prefixContext: .nonConsonant)
        .cell([.Latn: "yj", .Cyrl: "й", .Glag: "ⰻ"], prefixContext: .consonant)
        .k
        .l
        .m
        .n
        .o
        .cell([.Latn: "yo", .Cyrl: "ё", .Glag: "ⱖ"])
        .p
        .cell([.Latn: "q", .Cyrl: "қ", .Glag: "қ"], type: .consonant)
        .r
        .s
        .sh
        .cell([.Latn: "sjh", .Cyrl: "щ", .Glag: "ⱋ"], type: .consonant)
        .t
        .th
        .u
        .cell([.Latn: "yu", .Cyrl: "ю", .Glag: "ⱓ"])
        .v
        .w
        .x
        .kh
        .cell([.Latn: "y", .Cyrl: "ѵ", .Glag: "ⱛ"], prefixContext: .nonConsonant)
        .cell([.Latn: "y", .Cyrl: "ъ", .Glag: "ⱏ"], prefixContext: .consonant, postfixContext: .nonVowel)
        .cell([.Latn: "hy", .Cyrl: "ъ", .Glag: "ⱏ"], prefixContext: .nonConsonant, postfixContext: .nonVowel)
        .cell([.Latn: "yh", .Cyrl: "ъ", .Glag: "ⱏⱜ"], prefixContext: .consonant, postfixContext: .vowel)
        .cell([.Latn: "hyh", .Cyrl: "ъ", .Glag: "ⱏⱜ"], prefixContext: .nonConsonant, postfixContext: .vowel)
        .z
        .zh
        .cell([.Latn: "zjh", .Cyrl: "җ", .Glag: "җ"], type: .consonant)
    }
}
