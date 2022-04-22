//
//  ScriptTable.Cell.ih.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var ih: Self {
        self + .cell(
            type: .vowel,
            [
                .Latn: "ih",
                .Cyrl: "и",
                .Glag: "Ⰻ",
                .Grek: "η",
            ]
        )
    }
}
