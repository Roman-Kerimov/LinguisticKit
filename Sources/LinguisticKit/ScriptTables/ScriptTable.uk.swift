//
//  ScriptTable.uk.swift
//  
//
//  Created by Roman Kerimov on 2020-04-06.
//

public extension ScriptTable {
    static let uk = ScriptTable(languageCode: "uk", defaultScript: .Cyrl) {
        .a
        .b
        .v
        .g
        .cell([.Cyrl: "ґ", .Latn: "gh"], type: .consonant)
        .d
        .e
        .cell([.Cyrl: "є", .Latn: "je"])
        .zh
        .z
        .cell([.Cyrl: "и", .Latn: "y"])
        .cell([.Cyrl: "і", .Latn: "i"])
        .cell([.Cyrl: "ї", .Latn: "ji"])
        .cell([.Cyrl: "й", .Latn: "j"], prefixContext: .nonConsonant, postfixContext: .nonVowel)
        .cell([.Cyrl: "й", .Latn: "jh"], prefixContext: .nonConsonant, postfixContext: .vowel)
        .cell([.Cyrl: "й", .Latn: "'j"], prefixContext: .consonant, postfixContext: .nonVowel)
        .cell([.Cyrl: "й", .Latn: "'jh"], prefixContext: .consonant, postfixContext: .vowel)
        .cell([.Cyrl: "йо", .Latn: "jo"], prefixContext: .nonConsonant)
        .cell([.Cyrl: "йо", .Latn: "'jo"], prefixContext: .consonant)
        .k
        .l
        .m
        .n
        .o
        .p
        .r
        .s
        .t
        .u
        .f
        .kh
        .c
        .ch
        .sh
        .cell([.Latn: "shh", .Cyrl: "щ"], type: .consonant)
        .cell([.Cyrl: "ь", .Latn: "j"], prefixContext: .consonant, postfixContext: .nonVowel)
        .cell([.Cyrl: "ь", .Latn: "hj"], prefixContext: .nonConsonant, postfixContext: .nonVowel)
        .cell([.Cyrl: "ь", .Latn: "jh"], prefixContext: .consonant, postfixContext: .vowel)
        .cell([.Cyrl: "ь", .Latn: "hjh"], prefixContext: .nonConsonant, postfixContext: .vowel)
        .cell([.Cyrl: "ьо", .Latn: "jo"], prefixContext: .consonant)
        .cell([.Cyrl: "ьо", .Latn: "hjo"], prefixContext: .nonConsonant)
        .cell([.Cyrl: "ю", .Latn: "ju"])
        .cell([.Cyrl: "я", .Latn: "ja"])
    }
}
