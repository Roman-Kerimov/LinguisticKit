//
//  ScriptTable.Cell.a.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    static var a: Self {
        .cell(
            type: .vowel,
            [
                .Latn: "a",
                .Cyrl: "а",
                .Glag: "ⰰ",
                .Grek: "α",
                .Perm: "𐍐",
                .Runr: "ᚨ",
            ]
        )
    }
    
    var a: Self {
        self + .a
    }
}
