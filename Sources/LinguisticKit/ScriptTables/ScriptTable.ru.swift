//
//  ScriptTable.ru.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-03-20.
//

public extension ScriptTable {
    static let ru = ScriptTable(languageCode: "ru", defaultScript: .Cyrl) {
        .a
        .cell([.Latn: "ya", .Cyrl: "я", .Glag: "ⱑ", .Runr: "ᚤᚨ"])
        .b
        .c
        .ch
        .d
        .dh
        .cell([.Latn: "e", .Cyrl: "э", .Glag: "ⱔ", .Runr: "ᛖ"], type: .vowel, prefixContext: .nonConsonant)
        .cell([.Latn: "e", .Cyrl: "е", .Glag: "ⰵ", .Runr: "ᛖ"], prefixContext: .consonant)
        .cell([.Latn: "ye", .Cyrl: "е", .Glag: "ⰵ", .Runr: "ᚤᛖ"], prefixContext: .nonConsonant)
        .cell([.Latn: "ye", .Cyrl: "э", .Glag: "ⱔ", .Runr: "ᚤᛖ"], prefixContext: .consonant)
        .f
        .g
        .cell([.Latn: "gh", .Cyrl: "ғ", .Glag: "ғ", .Runr: "ᚷᚺ"], type: .consonant)
        .h
        .i
        .cell([.Latn: "yi", .Cyrl: "ы", .Glag: "ⱏⰹ", .Runr: "ᚤᛁ"])
        .cell([.Latn: "j", .Cyrl: "й", .Glag: "ⰻ", .Runr: "ᛃ"], type: .vowel, prefixContext: .nonConsonant)
        .cell([.Latn: "j", .Cyrl: "ь", .Glag: "ⱐ", .Runr: "ᛃ"], type: .vowel, prefixContext: .consonant)
        .cell([.Latn: "hj", .Cyrl: "ь", .Glag: "ⱐ", .Runr: "ᚺᛃ"], type: .vowel, prefixContext: .nonConsonant)
        .cell([.Latn: "yj", .Cyrl: "й", .Glag: "ⰻ", .Runr: "ᚤᛃ"], prefixContext: .consonant)
        .k
        .l
        .m
        .n
        .o
        .cell([.Latn: "yo", .Cyrl: "ё", .Glag: "ⱖ", .Runr: "ᚤᛟ"])
        .p
        .q
        .r
        .s
        .sh
        .cell([.Latn: "sjh", .Cyrl: "щ", .Glag: "ⱋ", .Runr: "ᛊᛃᚺ"], type: .consonant)
        .t
        .th
        .u
        .cell([.Latn: "yu", .Cyrl: "ю", .Glag: "ⱓ", .Runr: "ᚤᚢ"])
        .v
        .w
        .x
        .kh
        .cell([.Latn: "y", .Cyrl: "ѵ", .Glag: "ⱛ", .Runr: "ᚤ"], prefixContext: .nonConsonant)
        .cell([.Latn: "y", .Cyrl: "ъ", .Glag: "ⱏ", .Runr: "ᚤ"], prefixContext: .consonant, postfixContext: .nonVowel)
        .cell([.Latn: "hy", .Cyrl: "ъ", .Glag: "ⱏ", .Runr: "ᚺᚤ"], prefixContext: .nonConsonant, postfixContext: .nonVowel)
        .cell([.Latn: "yh", .Cyrl: "ъ", .Glag: "ⱏⱜ", .Runr: "ᚤᚺ"], prefixContext: .consonant, postfixContext: .vowel)
        .cell([.Latn: "hyh", .Cyrl: "ъ", .Glag: "ⱏⱜ", .Runr: "ᚺᚤᚺ"], prefixContext: .nonConsonant, postfixContext: .vowel)
        .z
        .zh
        .cell([.Latn: "zjh", .Cyrl: "җ", .Glag: "җ", .Runr: "ᛉᛃᚺ"], type: .consonant)
    }
}
