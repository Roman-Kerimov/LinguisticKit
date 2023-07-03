//
//  ScriptTable.Cell.e.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var e: Self {
        self + .cell(
            type: .vowel,
            [
                .Latn: "e",
                .Cyrl: "е",
                .Glag: "ⰵ",
                .Grek: "ε",
                .Perm: "𐍔",
                .Runr: "ᛖ",
            ]
        )
    }
}
