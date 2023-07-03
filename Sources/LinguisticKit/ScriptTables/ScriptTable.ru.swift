//
//  ScriptTable.ru.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-03-20.
//

public extension ScriptTable {
    static let ru = ScriptTable(languageCode: "ru", defaultScript: .Cyrl) {
        .a
        .cell(
            [
                .Latn: "ya",
                .Cyrl: "я",
                .Glag: "ⱑ",
                .Perm: "𐍴",
                .Runr: "ᚤᚨ",
            ]
        )
        .cell(
            [
                .Latn: "ą",
                .Cyrl: "ѧ",
                .Glag: "ⱕ",
                .Perm: "𐍵",
                .Runr: "ą",
            ],
            type: .vowel
        )
        .b
        .c
        .ch
        .d
        .dh
        .cell(
            [
                .Latn: "ʣ",
                .Cyrl: "Ѕ",
                .Glag: "Ⰷ",
                .Perm: "𐍘",
                .Runr: "ʣ",
            ],
            type: .consonant
        )
        .cell(
            [
                .Latn: "e",
                .Cyrl: "э",
                .Glag: "ⱔ",
                .Perm: "𐍱",
                .Runr: "ᛖ",
            ],
            type: .vowel,
            prefixContext: .nonConsonant
        )
        .cell(
            [
                .Latn: "e",
                .Cyrl: "е",
                .Glag: "ⰵ",
                .Perm: "𐍔",
                .Runr: "ᛖ",
            ],
            prefixContext: .consonant
        )
        .cell(
            [
                .Latn: "ye",
                .Cyrl: "е",
                .Glag: "ⰵ",
                .Perm: "𐍔",
                .Runr: "ᚤᛖ",
            ],
            prefixContext: .nonConsonant
        )
        .cell(
            [
                .Latn: "ye",
                .Cyrl: "э",
                .Glag: "ⱔ",
                .Perm: "𐍱",
                .Runr: "ᚤᛖ",
            ],
            prefixContext: .consonant
        )
        .cell(
            [
                .Latn: "eh",
                .Cyrl: "ѣ",
                .Glag: "Ⱑ",
                .Perm: "𐍲",
                .Runr: "ᛖᚺ",
            ],
            type: .vowel
        )
        .f
        .g
        .cell(
            [
                .Latn: "gh",
                .Cyrl: "ғ",
                .Glag: "ғ",
                .Perm: "𐍒𐍸",
                .Runr: "ᚷᚺ",
            ],
            type: .consonant
        )
        .h
        .i
        .cell(
            [
                .Latn: "yi",
                .Cyrl: "ы",
                .Glag: "ⱏⰹ",
                .Perm: "𐍨",
                .Runr: "ᚤᛁ",
            ]
        )
        .cell(
            [
                .Latn: "j",
                .Cyrl: "й",
                .Glag: "ⰻ",
                .Perm: "𐍧",
                .Runr: "ᛃ",
            ],
            type: .vowel,
            prefixContext: .nonConsonant
        )
        .cell(
            [
                .Latn: "j",
                .Cyrl: "ь",
                .Glag: "ⱐ",
                .Perm: "𐍰",
                .Runr: "ᛃ",
            ],
            type: .vowel,
            prefixContext: .consonant
        )
        .cell(
            [
                .Latn: "hj",
                .Cyrl: "ь",
                .Glag: "ⱐ",
                .Perm: "𐍰",
                .Runr: "ᚺᛃ",
            ],
            type: .vowel,
            prefixContext: .nonConsonant
        )
        .cell(
            [
                .Latn: "yj",
                .Cyrl: "й",
                .Glag: "ⰻ",
                .Perm: "𐍧",
                .Runr: "ᚤᛃ",
            ],
            prefixContext: .consonant
        )
        .k
        .l
        .m
        .n
        .o
        .oh
        .cell(
            [
                .Latn: "yo",
                .Cyrl: "ё",
                .Glag: "ⱖ",
                .Perm: "𐍩",
                .Runr: "ᚤᛟ",
            ]
        )
        .p
        .q
        .r
        .s
        .sh
        .cell(
            [
                .Latn: "sjh",
                .Cyrl: "щ",
                .Glag: "ⱋ",
                .Perm: "𐍦",
                .Runr: "ᛊᛃᚺ",
            ],
            type: .consonant
        )
        .t
        .th
        .u
        .cell(
            [
                .Latn: "yu",
                .Cyrl: "ю",
                .Glag: "ⱓ",
                .Perm: "𐍳",
                .Runr: "ᚤᚢ",
            ]
        )
        .v
        .w
        .x
        .kh
        .cell(
            [
                .Latn: "y",
                .Cyrl: "ѵ",
                .Glag: "ⱛ",
                .Perm: "𐍧𐍶",
                .Runr: "ᚤ",
            ],
            prefixContext: .nonConsonant
        )
        .cell(
            [
                .Latn: "y",
                .Cyrl: "ъ",
                .Glag: "ⱏ",
                .Perm: "𐍯",
                .Runr: "ᚤ",
            ],
            prefixContext: .consonant,
            postfixContext: .nonVowel
        )
        .cell(
            [
                .Latn: "hy",
                .Cyrl: "ъ",
                .Glag: "ⱏ",
                .Perm: "𐍯",
                .Runr: "ᚺᚤ",
            ],
            prefixContext: .nonConsonant,
            postfixContext: .nonVowel
        )
        .cell(
            [
                .Latn: "yh",
                .Cyrl: "ъ",
                .Glag: "ⱏⱜ",
                .Perm: "𐍯",
                .Runr: "ᚤᚺ",
            ],
            prefixContext: .consonant,
            postfixContext: .vowel
        )
        .cell(
            [
                .Latn: "hyh",
                .Cyrl: "ъ",
                .Glag: "ⱏⱜ",
                .Perm: "𐍯",
                .Runr: "ᚺᚤᚺ",
            ],
            prefixContext: .nonConsonant,
            postfixContext: .vowel
        )
        .z
        .zh
        .cell(
            [
                .Latn: "zjh",
                .Cyrl: "җ",
                .Glag: "җ",
                .Perm: "𐍖",
                .Runr: "ᛉᛃᚺ",
            ],
            type: .consonant
        )
    }
}
