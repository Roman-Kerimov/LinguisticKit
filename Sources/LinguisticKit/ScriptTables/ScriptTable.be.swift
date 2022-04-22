//
//  ScriptTable.be.swift
//  
//
//  Created by Roman Kerimov on 2020-09-02.
//

extension ScriptTable {
    static let be = ScriptTable(languageCode: "be", defaultScript: .Cyrl) {
        .a
        .b
        .v
        .cell([.Cyrl: "г", .Latn: "h"], type: .consonant)
        .cell([.Cyrl: "ґ", .Latn: "g"], type: .consonant)
        .d
        .cell([.Cyrl: "е", .Latn: "je"], type: .vowel, prefixContext: .nonConsonant)
        .cell([.Cyrl: "'е", .Latn: "je"], type: .vowel, prefixContext: .consonant)
        .cell([.Cyrl: "е", .Latn: "ie"], type: .vowel, prefixContext: .consonant)
        .cell([.Cyrl: "иэ", .Latn: "ië"], type: .vowel, prefixContext: .consonant)
        .cell([.Cyrl: "ё", .Latn: "jo"], type: .vowel, prefixContext: .nonConsonant)
        .cell([.Cyrl: "'ё", .Latn: "jo"], type: .vowel, prefixContext: .consonant)
        .cell([.Cyrl: "ё", .Latn: "io"], type: .vowel, prefixContext: .consonant)
        .cell([.Cyrl: "ио", .Latn: "iö"], type: .vowel, prefixContext: .consonant)
        .ž
        .z
        .cell([.Cyrl: "і", .Latn: "i"], type: .vowel)
        .cell([.Cyrl: "й", .Latn: "j"], type: .consonant)
        .k
        .cell([.Cyrl: "л", .Latn: "ł"], type: .consonant)
        .cell([.Cyrl: "ль", .Latn: "l"])
        .cell([.Cyrl: "ля", .Latn: "la"], type: .vowel)
        .cell([.Cyrl: "льа", .Latn: "l'a"], type: .vowel)
        .cell([.Cyrl: "ле", .Latn: "le"], type: .vowel)
        .cell([.Cyrl: "льэ", .Latn: "l'e"], type: .vowel)
        .cell([.Cyrl: "лі", .Latn: "li"], type: .vowel)
        .cell([.Cyrl: "льі", .Latn: "l'i"], type: .vowel)
        .cell([.Cyrl: "льы", .Latn: "l'y"], type: .vowel)
        .cell([.Cyrl: "лё", .Latn: "lo"], type: .vowel)
        .cell([.Cyrl: "льо", .Latn: "l'o"], type: .vowel)
        .cell([.Cyrl: "лю", .Latn: "lu"], type: .vowel)
        .cell([.Cyrl: "льу", .Latn: "l'u"], type: .vowel)
        .m
        .n
        .o
        .p
        .r
        .s
        .t
        .u
        .ŭ
        .f
        .ch_x
        .c
        .č
        .š
        .cell([.Cyrl: "ы", .Latn: "y"], type: .vowel)
        .cell([.Cyrl: "ь", .Latn: "́"], prefixContext: .consonant)
        .cell([.Cyrl: "ь", .Latn: "x́"], prefixContext: .nonConsonant)
        .cell([.Cyrl: "э", .Latn: "e"], type: .vowel)
        .cell([.Cyrl: "ю", .Latn: "ju"], type: .vowel, prefixContext: .nonConsonant)
        .cell([.Cyrl: "'ю", .Latn: "ju"], type: .vowel, prefixContext: .consonant)
        .cell([.Cyrl: "ю", .Latn: "iu"], type: .vowel, prefixContext: .consonant)
        .cell([.Cyrl: "иу", .Latn: "iü"], type: .vowel, prefixContext: .consonant)
        .cell([.Cyrl: "я", .Latn: "ja"], type: .vowel, prefixContext: .nonConsonant)
        .cell([.Cyrl: "'я", .Latn: "ja"], type: .vowel, prefixContext: .consonant)
        .cell([.Cyrl: "я", .Latn: "ia"], type: .vowel, prefixContext: .consonant)
        .cell([.Cyrl: "иа", .Latn: "iä"], type: .vowel, prefixContext: .consonant)
    }
}
