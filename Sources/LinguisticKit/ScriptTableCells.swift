//
//  ScriptTableCells.swift
//  
//
//  Created by Roman Kerimov on 2019-12-07.
//

import Foundation

extension ScriptTable.Cell {
    static let a = Self([.Latn: "a", .Cyrl: "а", .Glag: "ⰰ"], type: .vowel)
    static let b = Self([.Latn: "b", .Arab: "ب", .Cyrl: "б", .Glag: "ⰱ"], type: .consonant)
    static let c = Self([.Latn: "c", .Cyrl: "ц", .Glag: "ⱌ"], type: .consonant)
    static let ch = Self([.Latn: "ch", .Cyrl: "ч", .Glag: "ⱍ"], type: .consonant)
    static let d = Self([.Latn: "d", .Arab: "د", .Cyrl: "д", .Glag: "ⰴ"], type: .consonant)
    static let e = Self([.Latn: "e", .Cyrl: "е", .Glag: "ⰵ"], type: .vowel)
    static let f = Self([.Latn: "f", .Arab: "ف", .Cyrl: "ф", .Glag: "ⱇ"], type: .consonant)
    static let g = Self([.Latn: "g", .Cyrl: "г", .Glag: "ⰳ"], type: .consonant)
    static let h = Self([.Latn: "h", .Arab: "ه", .Cyrl: "һ", .Glag: "һ"], type: .consonant)
    static let i = Self([.Latn: "i", .Cyrl: "и", .Glag: "ⰹ"], type: .vowel)
    static let k = Self([.Latn: "k", .Arab: "ك", .Cyrl: "к", .Glag: "ⰽ"], type: .consonant)
    static let l = Self([.Latn: "l", .Arab: "ل", .Cyrl: "л", .Glag: "ⰾ"], type: .consonant)
    static let m = Self([.Latn: "m", .Arab: "م", .Cyrl: "м", .Glag: "ⰿ"], type: .consonant)
    static let n = Self([.Latn: "n", .Arab: "ن", .Cyrl: "н", .Glag: "ⱀ"], type: .consonant)
    static let o = Self([.Latn: "o", .Cyrl: "о", .Glag: "ⱁ"], type: .vowel)
    static let p = Self([.Latn: "p", .Cyrl: "п", .Glag: "ⱂ"], type: .consonant)
    static let q = Self([.Latn: "q", .Arab: "ق", .Cyrl: "қ", .Glag: "қ"], type: .consonant)
    static let r = Self([.Latn: "r", .Arab: "ر", .Cyrl: "р", .Glag: "ⱃ"], type: .consonant)
    static let s = Self([.Latn: "s", .Arab: "س", .Cyrl: "с", .Glag: "ⱄ"], type: .consonant)
    static let sh = Self([.Latn: "sh", .Cyrl: "ш", .Glag: "ⱎ"], type: .consonant)
    static let t = Self([.Latn: "t", .Arab: "ت", .Cyrl: "т", .Glag: "ⱅ"], type: .consonant)
    static let u = Self([.Latn: "u", .Cyrl: "у", .Glag: "ⱆ"], type: .vowel)
    static let v = Self([.Latn: "v", .Cyrl: "в", .Glag: "ⰲ"], type: .consonant)
    static let w = Self([.Latn: "w", .Cyrl: "ў", .Glag: "ў"], type: .consonant)
    static let x = Self([.Latn: "x", .Cyrl: "ѯ", .Glag: "ѯ"], type: .consonant)
    static let xh = Self([.Latn: "xh", .Cyrl: "х", .Glag: "ⱈ"], type: .consonant)
    static let z = Self([.Latn: "z", .Arab: "ز", .Cyrl: "з", .Glag: "ⰸ"], type: .consonant)
    static let zh = Self([.Latn: "zh", .Cyrl: "ж", .Glag: "ⰶ"], type: .consonant)
}

extension Array where Element == ScriptTable.Cell {
    static let VukGajTable: ScriptTable.RAWScriptTable = [
        .a,
        .b,
        .v,
        .g,
        .d,
        .init([.Cyrl: "ђ", .Latn: "đ"]), // sr
        .e,
        .init([.Cyrl: "ж", .Latn: "ž"]),
        .z,
        .init([.Cyrl: "ѕ", .Latn: "ǳ"]), // mk
        .i,
        .init([.Cyrl: "ј", .Latn: "j"]),
        .k,
        .l,
        .init([.Cyrl: "љ", .Latn: "ǉ"]),
        .m,
        .n,
        .init([.Cyrl: "њ", .Latn: "ǌ"]),
        .o,
        .p,
        .r,
        .s,
        .t,
        .init([.Cyrl: "ћ", .Latn: "ć"]), // sr
        .u,
        .f,
        .init([.Cyrl: "х", .Latn: "h"]),
        .c,
        .init([.Cyrl: "ч", .Latn: "č"]),
        .init([.Cyrl: "џ", .Latn: "ǆ"]),
        .init([.Cyrl: "ш", .Latn: "š"]),
    ]
}
