//
//  ScriptTable.Cell.k.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var k: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "k",
                .Cyrl: "к",
                .Glag: "ⰽ",
                .Grek: "κ",
                .Perm: "𐍚",
                .Runr: "ᚲ",
            ]
        )
    }
}
