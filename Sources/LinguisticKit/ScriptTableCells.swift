//
//  ScriptTableCells.swift
//  
//
//  Created by Roman Kerimov on 2019-12-07.
//

import Foundation

extension ScriptTable.Cell {
    static let a = Self([.Latn: "a", .Cyrl: "а", .Glag: "ⰰ", .Grek: "α"], type: .vowel)
    static let b = Self([.Latn: "b", .Cyrl: "б", .Glag: "ⰱ", .Grek: "β"], type: .consonant)
    static let c = Self([.Latn: "c", .Cyrl: "ц", .Glag: "ⱌ", /*.Grek: ""*/], type: .consonant)
    static let ch = Self([.Latn: "ch", .Cyrl: "ч", .Glag: "ⱍ", /*.Grek: ""*/], type: .consonant)
    static let ch_x = Self([.Latn: "ch", .Cyrl: "х", .Glag: "ⱈ", .Grek: "χ"], type: .consonant)
    static let d = Self([.Latn: "d", .Cyrl: "д", .Glag: "ⰴ", .Grek: "δ"], type: .consonant)
    static let e = Self([.Latn: "e", .Cyrl: "е", .Glag: "ⰵ", .Grek: "ε"], type: .vowel)
    static let eh = Self([.Latn: "eh", .Cyrl: "и", .Glag: "Ⰻ", .Grek: "η"], type: .vowel)
    static let f = Self([.Latn: "f", .Cyrl: "ф", .Glag: "ⱇ", .Grek: "φ"], type: .consonant)
    static let g = Self([.Latn: "g", .Cyrl: "г", .Glag: "ⰳ", .Grek: "γ"], type: .consonant)
    static let h = Self([.Latn: "h", .Cyrl: "һ", .Glag: "һ", .Grek: "ͱ"], type: .consonant)
    static let i = Self([.Latn: "i", .Cyrl: "и", .Glag: "ⰹ", .Grek: "ι"], type: .vowel)
    static let ih = Self([.Latn: "ih", .Cyrl: "и", .Glag: "Ⰻ", .Grek: "η"], type: .vowel)
    static let k = Self([.Latn: "k", .Cyrl: "к", .Glag: "ⰽ", .Grek: "κ"], type: .consonant)
    static let l = Self([.Latn: "l", .Cyrl: "л", .Glag: "ⰾ", .Grek: "λ"], type: .consonant)
    static let m = Self([.Latn: "m", .Cyrl: "м", .Glag: "ⰿ", .Grek: "μ"], type: .consonant)
    static let n = Self([.Latn: "n", .Cyrl: "н", .Glag: "ⱀ", .Grek: "ν"], type: .consonant)
    static let o = Self([.Latn: "o", .Cyrl: "о", .Glag: "ⱁ", .Grek: "ο"], type: .vowel)
    static let oh = Self([.Latn: "oh", .Cyrl: "ѡ", .Glag: "ⱉ", .Grek: "ω"], type: .vowel)
    static let ꞷ = Self([.Latn: "ꞷ", .Cyrl: "ѡ", .Glag: "ⱉ", .Grek: "ω"], type: .vowel)
    static let p = Self([.Latn: "p", .Cyrl: "п", .Glag: "ⱂ", .Grek: "π"], type: .consonant)
    static let ph = Self([.Latn: "ph", .Cyrl: "ф", .Glag: "ⱇ", .Grek: "φ"], type: .consonant)
    static let ps = Self([.Latn: "ps", .Cyrl: "ѱ", .Glag: "ⱂⱄ", .Grek: "ψ"], type: .consonant)
    static let ↄ = Self([.Latn: "ↄ", .Cyrl: "ѱ", .Glag: "ⱂⱄ", .Grek: "ψ"], type: .consonant)
    static let q = Self([.Latn: "q", .Cyrl: "ҁ", .Glag: "ҁ", .Grek: "ϟ"], type: .consonant)
    static let r = Self([.Latn: "r", .Cyrl: "р", .Glag: "ⱃ", .Grek: "ρ"], type: .consonant)
    static let s = Self([.Latn: "s", .Cyrl: "с", .Glag: "ⱄ", .Grek: "ϲ"], type: .consonant)
    static let sh = Self([.Latn: "sh", .Cyrl: "ш", .Glag: "ⱎ", .Grek: "ϸ"], type: .consonant)
    static let t = Self([.Latn: "t", .Cyrl: "т", .Glag: "ⱅ", .Grek: "τ"], type: .consonant)
    static let th = Self([.Latn: "th", .Cyrl: "ѳ", .Glag: "ⱚ", .Grek: "θ"], type: .consonant)
    static let þ = Self([.Latn: "þ", .Cyrl: "ѳ", .Glag: "ⱚ", .Grek: "θ"], type: .consonant)
    static let u = Self([.Latn: "u", .Cyrl: "у", .Glag: "ⱆ", .Grek: "υ"], type: .vowel)
    static let v = Self([.Latn: "v", .Cyrl: "в", .Glag: "ⰲ", .Grek: "β"], type: .consonant)
    static let w = Self([.Latn: "w", .Cyrl: "ў", .Glag: "ў", .Grek: "ϝ"], type: .consonant)
    static let x = Self([.Latn: "x", .Cyrl: "ѯ", .Glag: "ѯ", .Grek: "ξ"], type: .consonant)
    static let xh = Self([.Latn: "xh", .Cyrl: "х", .Glag: "ⱈ", .Grek: "χ"], type: .consonant)
    static let y = Self([.Latn: "y", .Cyrl: "ѵ", .Glag: "ⱛ", .Grek: "υ"], type: .vowel)
    static let z = Self([.Latn: "z", .Cyrl: "з", .Glag: "ⰸ", .Grek: "ζ"], type: .consonant)
    static let zh = Self([.Latn: "zh", .Cyrl: "ж", .Glag: "ⰶ", .Grek: "ζͱ"], type: .consonant)
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
    
    static let GreekSharedTable: ScriptTable.RAWScriptTable = [
        .a,
        .g,
        .d,
        .e,
        .z,
        .th,
        .i,
        .k,
        .l,
        .m,
        .n,
        .x,
        .o,
        .p,
        .r,
        .init([.Grek: "σ", .Latn: "s"], postfixContext: .letter),
        .init([.Grek: "σ", .Latn: "s"], prefixContext: .nonLetter, postfixContext: .nonLetter),
        .init([.Grek: "ς", .Latn: "s"], prefixContext: .letter, postfixContext: .nonLetter),
        .init([.Grek: "ς", .Latn: "hs"], prefixContext: .nonLetter, postfixContext: .nonLetter),
        .t,
        .y,
        .ch_x,
        .ps,
        .init([.Grek: "πσ", .Latn: "p's"], postfixContext: .letter),
        .init([.Grek: "πς", .Latn: "p's"], postfixContext: .nonLetter),
        .oh,
        
        .h,
        .q,
        .w,
    ]
}
