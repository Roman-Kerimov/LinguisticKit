//
//  ScriptTable.ru.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-03-20.
//

public extension ScriptTable {
    
    static let ru: ScriptTable = .init(languageCode: "ru") {
        [
            .a,
            .init([.Latn: "ya", .Cyrl: "я", .Glag: "ⱑ"]),
            .b,
            .init([.Latn: "c", .Cyrl: "ц", .Glag: "ⱌ"], type: .consonant),
            .init([.Latn: "ch", .Cyrl: "ч", .Glag: "ⱍ"], type: .consonant),
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
            .init([.Latn: "sh", .Cyrl: "ш", .Glag: "ⱎ"], type: .consonant),
            .init([.Latn: "sjh", .Cyrl: "щ", .Glag: "ⱋ"], type: .consonant),
            .t,
            .init([.Latn: "th", .Cyrl: "ѳ", .Glag: "ⱚ"], type: .consonant),
            .u,
            .init([.Latn: "yu", .Cyrl: "ю", .Glag: "ⱓ"]),
            .v,
            .w,
            .x,
            .init([.Latn: "xh", .Cyrl: "х", .Glag: "ⱈ"], type: .consonant),
            .init([.Latn: "y", .Cyrl: "ѵ", .Glag: "ⱛ"], prefixContext: .nonConsonant),
            .init([.Latn: "y", .Cyrl: "ъ", .Glag: "ⱏ"], prefixContext: .consonant, postfixContext: .nonVowel),
            .init([.Latn: "hy", .Cyrl: "ъ", .Glag: "ⱏ"], prefixContext: .nonConsonant, postfixContext: .nonVowel),
            .init([.Latn: "yh", .Cyrl: "ъ", .Glag: "ⱏⱜ"], prefixContext: .consonant, postfixContext: .vowel),
            .init([.Latn: "hyh", .Cyrl: "ъ", .Glag: "ⱏⱜ"], prefixContext: .nonConsonant, postfixContext: .vowel),
            .z,
            .init([.Latn: "zh", .Cyrl: "ж", .Glag: "ⰶ"], type: .consonant),
            .init([.Latn: "zjh", .Cyrl: "җ", .Glag: "җ"], type: .consonant)
        ]

    }
}

