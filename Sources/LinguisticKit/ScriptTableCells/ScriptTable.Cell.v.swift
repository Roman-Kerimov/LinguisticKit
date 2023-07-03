//
//  ScriptTable.Cell.v.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var v: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "v",
                .Cyrl: "в",
                .Glag: "ⰲ",
                .Grek: "β",
                .Perm: "𐍮",
                .Runr: "ᚡ",
            ]
        )
    }
}
