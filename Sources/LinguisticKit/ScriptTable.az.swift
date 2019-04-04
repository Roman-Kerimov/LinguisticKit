//
//  ScriptTable.az.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-04-04.
//

public extension ScriptTable {
    
    static let az: ScriptTable = .init(languageCode: "az") { () -> ScriptTable.RAWScriptTable in
        return [
            .a,
            .b,
            [.Latn: "c", .Cyrl: "ҹ"],
            [.Latn: "ç", .Cyrl: "ч"],
            .d,

            .e,
            [.Latn: "ə", .Cyrl: "ә"],
            .f,
            [.Latn: "g", .Cyrl: "ҝ"],
            [.Latn: "ğ", .Cyrl: "ғ"],
            .h,
            [.Latn: "x", .Cyrl: "х"],
            [.Latn: "ı", .Cyrl: "ы"],
            .i,
            [.Latn: "j", .Cyrl: "ж"],
            .k,
            [.Latn: "q", .Cyrl: "г"],
            .l,
            .m,
            .n,
            .o,
            [.Latn: "ö", .Cyrl: "ө"],
            .p,
            .r,
            .s,
            [.Latn: "ş", .Cyrl: "ш"],
            .t,
            .u,
            [.Latn: "ü", .Cyrl: "ү"],
            .v,
            [.Latn: "y", .Cyrl: "ј"],
            .z,
        ]
    }
}
