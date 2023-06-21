//
//  ScriptTable.Cell.u.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var u: Self {
        self + .cell(
            type: .vowel,
            [
                .Latn: "u",
                .Cyrl: "у",
                .Glag: "ⱆ",
                .Grek: "υ",
                .Runr: "ᚢ",
            ]
        )
    }
}
