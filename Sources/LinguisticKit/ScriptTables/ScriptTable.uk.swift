//
//  ScriptTable.uk.swift
//  
//
//  Created by Roman Kerimov on 2020-04-06.
//

public extension ScriptTable {
    
    static let uk: ScriptTable = .init(languageCode: "uk", defaultScript: .Cyrl) {[
        .a,
        .b,
        .v,
        .g,
        .init([.Cyrl: "ґ", .Latn: "gh"], type: .consonant),
        .d,
        .e,
        .init([.Cyrl: "є", .Latn: "je"]),
        .zh,
        .z,
        .init([.Cyrl: "и", .Latn: "y"]),
        .init([.Cyrl: "і", .Latn: "i"]),
        .init([.Cyrl: "ї", .Latn: "ji"]),
        .init([.Cyrl: "й", .Latn: "j"], prefixContext: .nonConsonant, postfixContext: .nonVowel),
        .init([.Cyrl: "й", .Latn: "jh"], prefixContext: .nonConsonant, postfixContext: .vowel),
        .init([.Cyrl: "й", .Latn: "'j"], prefixContext: .consonant, postfixContext: .nonVowel),
        .init([.Cyrl: "й", .Latn: "'jh"], prefixContext: .consonant, postfixContext: .vowel),
        .init([.Cyrl: "йо", .Latn: "jo"], prefixContext: .nonConsonant),
        .init([.Cyrl: "йо", .Latn: "'jo"], prefixContext: .consonant),
        .k,
        .l,
        .m,
        .n,
        .o,
        .p,
        .r,
        .s,
        .t,
        .u,
        .f,
        .xh,
        .c,
        .ch,
        .sh,
        .init([.Latn: "shh", .Cyrl: "щ"], type: .consonant),
        .init([.Cyrl: "ь", .Latn: "j"], prefixContext: .consonant, postfixContext: .nonVowel),
        .init([.Cyrl: "ь", .Latn: "hj"], prefixContext: .nonConsonant, postfixContext: .nonVowel),
        .init([.Cyrl: "ь", .Latn: "jh"], prefixContext: .consonant, postfixContext: .vowel),
        .init([.Cyrl: "ь", .Latn: "hjh"], prefixContext: .nonConsonant, postfixContext: .vowel),
        .init([.Cyrl: "ьо", .Latn: "jo"], prefixContext: .consonant),
        .init([.Cyrl: "ьо", .Latn: "hjo"], prefixContext: .nonConsonant),
        .init([.Cyrl: "ю", .Latn: "ju"]),
        .init([.Cyrl: "я", .Latn: "ja"]),
    ]}
}
