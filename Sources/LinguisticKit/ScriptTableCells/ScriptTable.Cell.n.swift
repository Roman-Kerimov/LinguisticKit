//
//  ScriptTable.Cell.n.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var n: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "n",
                .Cyrl: "н",
                .Glag: "ⱀ",
                .Grek: "ν",
                .Runr: "ᚾ",
            ]
        )
    }
}
