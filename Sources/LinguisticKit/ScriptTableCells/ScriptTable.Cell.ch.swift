//
//  ScriptTable.Cell.ch.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var ch: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "ch",
                .Cyrl: "ч",
                .Glag: "ⱍ",
                //.Grek: "",
            ]
        )
    }
}
