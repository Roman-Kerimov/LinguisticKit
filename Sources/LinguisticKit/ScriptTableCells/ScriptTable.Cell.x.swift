//
//  ScriptTable.Cell.x.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var x: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "x",
                .Cyrl: "ѯ",
                .Glag: "ѯ",
                .Grek: "ξ",
                .Perm: "𐍚𐍺",
                .Runr: "ᛪ",
            ]
        )
    }
}
