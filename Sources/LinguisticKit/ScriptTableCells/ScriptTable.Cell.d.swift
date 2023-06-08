//
//  ScriptTable.Cell.d.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var d: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "d",
                .Cyrl: "д",
                .Glag: "ⰴ",
                .Grek: "δ",
                .Runr: "ᛞ",
            ]
        )
    }
}
