//
//  ScriptTable.Cell.zh.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var zh: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "zh",
                .Cyrl: "ж",
                .Glag: "ⰶ",
                .Grek: "ζͱ",
                .Runr: "ᛉᚺ",
            ]
        )
    }
}
