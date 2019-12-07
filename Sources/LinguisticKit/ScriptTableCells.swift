//
//  ScriptTableCells.swift
//  
//
//  Created by Roman Kerimov on 2019-12-07.
//

import Foundation

extension ScriptTable.Cell {
    static let a: Self = .init([.Latn: "a", .Cyrl: "а", .Glag: "ⰰ"], type: .vowel)
    static let b: Self = .init([.Latn: "b", .Cyrl: "б", .Glag: "ⰱ"], type: .consonant)
    static let d: Self = .init([.Latn: "d", .Cyrl: "д", .Glag: "ⰴ"], type: .consonant)
    static let e: Self = .init([.Latn: "e", .Cyrl: "е", .Glag: "ⰵ"], type: .vowel)
    static let f: Self = .init([.Latn: "f", .Cyrl: "ф", .Glag: "ⱇ"], type: .consonant)
    static let g: Self = .init([.Latn: "g", .Cyrl: "г", .Glag: "ⰳ"], type: .consonant)
    static let h: Self = .init([.Latn: "h", .Cyrl: "һ", .Glag: "һ"], type: .consonant)
    static let i: Self = .init([.Latn: "i", .Cyrl: "и", .Glag: "ⰹ"], type: .vowel)
    static let j: Self = .init([.Latn: "j", .Cyrl: "й", .Glag: "ⰻ"], type: .consonant)
    static let k: Self = .init([.Latn: "k", .Cyrl: "к", .Glag: "ⰽ"], type: .consonant)
    static let l: Self = .init([.Latn: "l", .Cyrl: "л", .Glag: "ⰾ"], type: .consonant)
    static let m: Self = .init([.Latn: "m", .Cyrl: "м", .Glag: "ⰿ"], type: .consonant)
    static let n: Self = .init([.Latn: "n", .Cyrl: "н", .Glag: "ⱀ"], type: .consonant)
    static let o: Self = .init([.Latn: "o", .Cyrl: "о", .Glag: "ⱁ"], type: .vowel)
    static let p: Self = .init([.Latn: "p", .Cyrl: "п", .Glag: "ⱂ"], type: .consonant)
    static let r: Self = .init([.Latn: "r", .Cyrl: "р", .Glag: "ⱃ"], type: .consonant)
    static let s: Self = .init([.Latn: "s", .Cyrl: "с", .Glag: "ⱄ"], type: .consonant)
    static let t: Self = .init([.Latn: "t", .Cyrl: "т", .Glag: "ⱅ"], type: .consonant)
    static let u: Self = .init([.Latn: "u", .Cyrl: "у", .Glag: "ⱆ"], type: .vowel)
    static let v: Self = .init([.Latn: "v", .Cyrl: "в", .Glag: "ⰲ"], type: .consonant)
    static let w: Self = .init([.Latn: "w", .Cyrl: "ў", .Glag: "ў"], type: .consonant)
    static let x: Self = .init([.Latn: "x", .Cyrl: "ѯ", .Glag: "ѯ"], type: .consonant)
    static let y: Self = .init([.Latn: "y", .Cyrl: "ѵ", .Glag: "ⱛ"], type: .vowel)
    static let z: Self = .init([.Latn: "z", .Cyrl: "з", .Glag: "ⰸ"], type: .consonant)
}
