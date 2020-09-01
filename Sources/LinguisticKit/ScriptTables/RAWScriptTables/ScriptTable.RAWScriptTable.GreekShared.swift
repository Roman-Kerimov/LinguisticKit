//
//  ScriptTable.RAWScriptTable.GreekShared.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    static let GreekShared: ScriptTable.RAWScriptTable = [
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
