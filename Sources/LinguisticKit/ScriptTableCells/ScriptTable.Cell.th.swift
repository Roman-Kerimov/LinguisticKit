//
//  ScriptTable.Cell.th.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var th: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "th",
                .Cyrl: "ѳ",
                .Glag: "ⱚ",
                .Grek: "θ",
                .Runr: "ᚦ",
            ]
        )
    }
}
