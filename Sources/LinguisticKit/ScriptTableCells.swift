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
