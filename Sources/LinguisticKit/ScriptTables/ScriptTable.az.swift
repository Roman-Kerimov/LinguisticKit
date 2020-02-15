//
//  ScriptTable.az.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-04-04.
//

public extension ScriptTable {
    
    static let az: ScriptTable = .init(languageCode: "az") {[
        .a,
        .b,
        .init([.Latn: "c", .Cyrl: "ҹ"]),
        .init([.Latn: "ç", .Cyrl: "ч"]),
        .d,
        .e,
        .init([.Latn: "ə", .Cyrl: "ә"]),
        .f,
        .init([.Latn: "g", .Cyrl: "ҝ"]),
        .init([.Latn: "ğ", .Cyrl: "ғ"]),
        .h,
        .init([.Latn: "x", .Cyrl: "х"]),
        .init([.Latn: "ı", .Cyrl: "ы"]),
        .i,
        .init([.Latn: "j", .Cyrl: "ж"]),
        .k,
        .init([.Latn: "q", .Cyrl: "г"]),
        .l,
        .m,
        .n,
        .o,
        .init([.Latn: "ö", .Cyrl: "ө"]),
        .p,
        .r,
        .s,
        .init([.Latn: "ş", .Cyrl: "ш"]),
        .t,
        .u,
        .init([.Latn: "ü", .Cyrl: "ү"]),
        .v,
        .init([.Latn: "y", .Cyrl: "ј"]),
        .z,
    ]}
}
