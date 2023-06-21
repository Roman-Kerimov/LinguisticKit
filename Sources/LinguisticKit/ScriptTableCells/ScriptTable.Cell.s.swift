//
//  ScriptTable.Cell.s.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var s: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "s",
                .Cyrl: "с",
                .Glag: "ⱄ",
                .Grek: "ϲ",
                .Runr: "ᛊ",
            ]
        )
    }
}
