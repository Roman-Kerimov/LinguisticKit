//
//  ScriptTable.Cell.ps.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var ps: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "ps",
                .Cyrl: "ѱ",
                .Glag: "ⱂⱄ",
                .Grek: "ψ",
            ]
        )
    }
}
