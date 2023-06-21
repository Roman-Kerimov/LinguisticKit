//
//  ScriptTable.Cell.q.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var q: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "q",
                .Cyrl: "ҁ",
                .Glag: "ҁ",
                .Grek: "ϟ",
                .Runr: "ᛩ",
            ]
        )
    }
}
