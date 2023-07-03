//
//  ScriptTable.Cell.l.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var l: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "l",
                .Cyrl: "л",
                .Glag: "ⰾ",
                .Grek: "λ",
                .Perm: "𐍛",
                .Runr: "ᛚ",
            ]
        )
    }
}
