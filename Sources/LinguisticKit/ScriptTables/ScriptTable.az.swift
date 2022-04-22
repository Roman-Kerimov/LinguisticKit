//
//  ScriptTable.az.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-04-04.
//

public extension ScriptTable {
    static let az = ScriptTable(languageCode: "az", defaultScript: .Latn) {
        .a
        .b
        .cell([.Latn: "c", .Cyrl: "ҹ"])
        .cell([.Latn: "ç", .Cyrl: "ч"])
        .d
        .e
        .cell([.Latn: "ə", .Cyrl: "ә"])
        .f
        .cell([.Latn: "g", .Cyrl: "ҝ"])
        .cell([.Latn: "ğ", .Cyrl: "ғ"])
        .h
        .cell([.Latn: "x", .Cyrl: "х"])
        .cell([.Latn: "ı", .Cyrl: "ы"])
        .i
        .cell([.Latn: "j", .Cyrl: "ж"])
        .k
        .cell([.Latn: "q", .Cyrl: "г"])
        .l
        .m
        .n
        .o
        .cell([.Latn: "ö", .Cyrl: "ө"])
        .p
        .r
        .s
        .cell([.Latn: "ş", .Cyrl: "ш"])
        .t
        .u
        .cell([.Latn: "ü", .Cyrl: "ү"])
        .v
        .cell([.Latn: "y", .Cyrl: "ј"])
        .z
    }
}
