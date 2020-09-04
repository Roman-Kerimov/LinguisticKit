//
//  ScriptTable.be.swift
//  
//
//  Created by Roman Kerimov on 2020-09-02.
//

extension ScriptTable {
    static let be = ScriptTable(languageCode: "be", defaultScript: .Cyrl) {[
        .a,
        .b,
        .v,
        .init([.Cyrl: "г", .Latn: "h"], type: .consonant),
        .init([.Cyrl: "ґ", .Latn: "g"], type: .consonant),
        .d,
        .init([.Cyrl: "е", .Latn: "je"], type: .vowel, prefixContext: .nonConsonant),
        .init([.Cyrl: "'е", .Latn: "je"], type: .vowel, prefixContext: .consonant),
        .init([.Cyrl: "е", .Latn: "ie"], type: .vowel, prefixContext: .consonant),
        .init([.Cyrl: "иэ", .Latn: "ië"], type: .vowel, prefixContext: .consonant),
        .init([.Cyrl: "ё", .Latn: "jo"], type: .vowel, prefixContext: .nonConsonant),
        .init([.Cyrl: "'ё", .Latn: "jo"], type: .vowel, prefixContext: .consonant),
        .init([.Cyrl: "ё", .Latn: "io"], type: .vowel, prefixContext: .consonant),
        .init([.Cyrl: "ио", .Latn: "iö"], type: .vowel, prefixContext: .consonant),
        .ž,
        .z,
        .init([.Cyrl: "і", .Latn: "i"], type: .vowel),
        .init([.Cyrl: "й", .Latn: "j"], type: .consonant),
        .k,
        .init([.Cyrl: "л", .Latn: "ł"], type: .consonant),
        .init([.Cyrl: "ль", .Latn: "l"]),
        .init([.Cyrl: "ля", .Latn: "la"], type: .vowel),
        .init([.Cyrl: "льа", .Latn: "l'a"], type: .vowel),
        .init([.Cyrl: "ле", .Latn: "le"], type: .vowel),
        .init([.Cyrl: "льэ", .Latn: "l'e"], type: .vowel),
        .init([.Cyrl: "лі", .Latn: "li"], type: .vowel),
        .init([.Cyrl: "льі", .Latn: "l'i"], type: .vowel),
        .init([.Cyrl: "льы", .Latn: "l'y"], type: .vowel),
        .init([.Cyrl: "лё", .Latn: "lo"], type: .vowel),
        .init([.Cyrl: "льо", .Latn: "l'o"], type: .vowel),
        .init([.Cyrl: "лю", .Latn: "lu"], type: .vowel),
        .init([.Cyrl: "льу", .Latn: "l'u"], type: .vowel),
        .m,
        .n,
        .o,
        .p,
        .r,
        .s,
        .t,
        .u,
        .ŭ,
        .f,
        .ch_x,
        .c,
        .č,
        .š,
        .init([.Cyrl: "ы", .Latn: "y"], type: .vowel),
        .init([.Cyrl: "ь", .Latn: "́"], prefixContext: .consonant),
        .init([.Cyrl: "ь", .Latn: "x́"], prefixContext: .nonConsonant),
        .init([.Cyrl: "э", .Latn: "e"], type: .vowel),
        .init([.Cyrl: "ю", .Latn: "ju"], type: .vowel, prefixContext: .nonConsonant),
        .init([.Cyrl: "'ю", .Latn: "ju"], type: .vowel, prefixContext: .consonant),
        .init([.Cyrl: "ю", .Latn: "iu"], type: .vowel, prefixContext: .consonant),
        .init([.Cyrl: "иу", .Latn: "iü"], type: .vowel, prefixContext: .consonant),
        .init([.Cyrl: "я", .Latn: "ja"], type: .vowel, prefixContext: .nonConsonant),
        .init([.Cyrl: "'я", .Latn: "ja"], type: .vowel, prefixContext: .consonant),
        .init([.Cyrl: "я", .Latn: "ia"], type: .vowel, prefixContext: .consonant),
        .init([.Cyrl: "иа", .Latn: "iä"], type: .vowel, prefixContext: .consonant),
    ]}
}