//
//  ScriptTable.Cell.g.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var g: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "g",
                .Cyrl: "г",
                .Glag: "ⰳ",
                .Grek: "γ",
                .Perm: "𐍒",
                .Runr: "ᚷ",
            ]
        )
    }
}
