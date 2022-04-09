//
//  ScriptTable.Cell.f.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var f: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "f",
                .Cyrl: "ф",
                .Glag: "ⱇ",
                .Grek: "φ",
            ]
        )
    }
}
