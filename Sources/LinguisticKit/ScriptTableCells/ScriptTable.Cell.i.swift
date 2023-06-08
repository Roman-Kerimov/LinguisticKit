//
//  ScriptTable.Cell.i.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var i: Self {
        self + .cell(
            type: .vowel,
            [
                .Latn: "i",
                .Cyrl: "и",
                .Glag: "ⰹ",
                .Grek: "ι",
                .Runr: "ᛁ",
            ]
        )
    }
}
