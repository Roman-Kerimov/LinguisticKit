//
//  ScriptTable.Cell.eh.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var eh: Self {
        self + .cell(
            type: .vowel,
            [
                .Latn: "eh",
                .Cyrl: "и",
                .Glag: "Ⰻ",
                .Grek: "η",
            ]
        )
    }
}
