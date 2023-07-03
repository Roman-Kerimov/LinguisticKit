//
//  ScriptTable.Cell.b.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var b: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "b",
                .Cyrl: "б",
                .Glag: "ⰱ",
                .Grek: "β",
                .Perm: "𐍑",
                .Runr: "ᛒ",
            ]
        )
    }
}
