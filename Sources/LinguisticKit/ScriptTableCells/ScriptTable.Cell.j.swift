//
//  ScriptTable.Cell.j.swift
//  
//
//  Created by Roman Kerimov on 2022-08-15.
//

extension ScriptTable.RAWScriptTable {
    var j: Self {
        self + .cell(
            type: .vowel,
            [
                .Latn: "j",
                .Cyrl: "й",
                .Glag: "ⰻ",
                .Grek: "ϳ",
                .Runr: "ᛃ"
            ]
        )
    }
}
