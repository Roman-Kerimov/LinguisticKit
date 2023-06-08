//
//  ScriptTable.Cell.r.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var r: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "r",
                .Cyrl: "р",
                .Glag: "ⱃ",
                .Grek: "ρ",
                .Runr: "ᚱ",
            ]
        )
    }
}
