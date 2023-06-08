//
//  ScriptTable.Cell.m.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var m: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "m",
                .Cyrl: "м",
                .Glag: "ⰿ",
                .Grek: "μ",
                .Runr: "ᛗ",
            ]
        )
    }
}
