//
//  ScriptTable.RAWScriptTable.VukGaj.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    static let VukGaj: ScriptTable.RAWScriptTable = [
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
