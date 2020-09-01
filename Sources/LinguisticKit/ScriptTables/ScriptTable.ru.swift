//
//  ScriptTable.ru.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-03-20.
//

public extension ScriptTable {
    
    static let ru: ScriptTable = .init(languageCode: "ru", defaultScript: .Cyrl) {[
        .a,
        .init([.Latn: "ya", .Cyrl: "я", .Glag: "ⱑ"]),
        .b,
        .c,
        .ch,
        .d,
        .init([.Latn: "dh", .Cyrl: "ҙ", .Glag: "ҙ"], type: .consonant),
        .init([.Latn: "e", .Cyrl: "э", .Glag: "ⱔ"], prefixContext: .nonConsonant),
        .init([.Latn: "e", .Cyrl: "е", .Glag: "ⰵ"], prefixContext: .consonant),
        .init([.Latn: "ye", .Cyrl: "е", .Glag: "ⰵ"], prefixContext: .nonConsonant),
        .init([.Latn: "ye", .Cyrl: "э", .Glag: "ⱔ"], prefixContext: .consonant),
        .f,
        .g,
        .init([.Latn: "gh", .Cyrl: "ғ", .Glag: "ғ"], type: .consonant),
        .h,
        .i,
        .init([.Latn: "yi", .Cyrl: "ы", .Glag: "ⱏⰹ"]),
        .init([.Latn: "j", .Cyrl: "й", .Glag: "ⰻ"], prefixContext: .nonConsonant),
        .init([.Latn: "j", .Cyrl: "ь", .Glag: "ⱐ"], prefixContext: .consonant),
        .init([.Latn: "hj", .Cyrl: "ь", .Glag: "ⱐ"], prefixContext: .nonConsonant),
        .init([.Latn: "yj", .Cyrl: "й", .Glag: "ⰻ"], prefixContext: .consonant),
        .k,
        .l,
        .m,
        .n,
        .o,
        .init([.Latn: "yo", .Cyrl: "ё", .Glag: "ⱖ"]),
        .p,
        .init([.Latn: "q", .Cyrl: "қ", .Glag: "қ"], type: .consonant),
        .r,
        .s,
        .sh,
        .init([.Latn: "sjh", .Cyrl: "щ", .Glag: "ⱋ"], type: .consonant),
        .t,
        .th,
        .u,
        .init([.Latn: "yu", .Cyrl: "ю", .Glag: "ⱓ"]),
        .v,
        .w,
        .x,
        .xh,
        .init([.Latn: "y", .Cyrl: "ѵ", .Glag: "ⱛ"], prefixContext: .nonConsonant),
        .init([.Latn: "y", .Cyrl: "ъ", .Glag: "ⱏ"], prefixContext: .consonant, postfixContext: .nonVowel),
        .init([.Latn: "hy", .Cyrl: "ъ", .Glag: "ⱏ"], prefixContext: .nonConsonant, postfixContext: .nonVowel),
        .init([.Latn: "yh", .Cyrl: "ъ", .Glag: "ⱏⱜ"], prefixContext: .consonant, postfixContext: .vowel),
        .init([.Latn: "hyh", .Cyrl: "ъ", .Glag: "ⱏⱜ"], prefixContext: .nonConsonant, postfixContext: .vowel),
        .z,
        .zh,
        .init([.Latn: "zjh", .Cyrl: "җ", .Glag: "җ"], type: .consonant)
    ]}
}

