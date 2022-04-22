//
//  ScriptTable.Cell.z.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var z: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "z",
                .Cyrl: "з",
                .Glag: "ⰸ",
                .Grek: "ζ",
            ]
        )
    }
}
