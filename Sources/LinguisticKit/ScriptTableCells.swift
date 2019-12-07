//
//  ScriptTableCells.swift
//  
//
//  Created by Roman Kerimov on 2019-12-07.
//

import Foundation

extension ScriptTable.Cell {
    static let a = Self([.Latn: "a", .Cyrl: "а", .Glag: "ⰰ"], type: .vowel)
    static let b = Self([.Latn: "b", .Cyrl: "б", .Glag: "ⰱ"], type: .consonant)
    static let d = Self([.Latn: "d", .Cyrl: "д", .Glag: "ⰴ"], type: .consonant)
    static let e = Self([.Latn: "e", .Cyrl: "е", .Glag: "ⰵ"], type: .vowel)
    static let f = Self([.Latn: "f", .Cyrl: "ф", .Glag: "ⱇ"], type: .consonant)
    static let g = Self([.Latn: "g", .Cyrl: "г", .Glag: "ⰳ"], type: .consonant)
    static let h = Self([.Latn: "h", .Cyrl: "һ", .Glag: "һ"], type: .consonant)
    static let i = Self([.Latn: "i", .Cyrl: "и", .Glag: "ⰹ"], type: .vowel)
    static let j = Self([.Latn: "j", .Cyrl: "й", .Glag: "ⰻ"], type: .consonant)
    static let k = Self([.Latn: "k", .Cyrl: "к", .Glag: "ⰽ"], type: .consonant)
    static let l = Self([.Latn: "l", .Cyrl: "л", .Glag: "ⰾ"], type: .consonant)
    static let m = Self([.Latn: "m", .Cyrl: "м", .Glag: "ⰿ"], type: .consonant)
    static let n = Self([.Latn: "n", .Cyrl: "н", .Glag: "ⱀ"], type: .consonant)
    static let o = Self([.Latn: "o", .Cyrl: "о", .Glag: "ⱁ"], type: .vowel)
    static let p = Self([.Latn: "p", .Cyrl: "п", .Glag: "ⱂ"], type: .consonant)
    static let r = Self([.Latn: "r", .Cyrl: "р", .Glag: "ⱃ"], type: .consonant)
    static let s = Self([.Latn: "s", .Cyrl: "с", .Glag: "ⱄ"], type: .consonant)
    static let t = Self([.Latn: "t", .Cyrl: "т", .Glag: "ⱅ"], type: .consonant)
    static let u = Self([.Latn: "u", .Cyrl: "у", .Glag: "ⱆ"], type: .vowel)
    static let v = Self([.Latn: "v", .Cyrl: "в", .Glag: "ⰲ"], type: .consonant)
    static let w = Self([.Latn: "w", .Cyrl: "ў", .Glag: "ў"], type: .consonant)
    static let x = Self([.Latn: "x", .Cyrl: "ѯ", .Glag: "ѯ"], type: .consonant)
    static let y = Self([.Latn: "y", .Cyrl: "ѵ", .Glag: "ⱛ"], type: .vowel)
    static let z = Self([.Latn: "z", .Cyrl: "з", .Glag: "ⰸ"], type: .consonant)
}
