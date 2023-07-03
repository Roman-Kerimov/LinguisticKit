//
//  ScriptTable.Cell.p.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var p: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "p",
                .Cyrl: "п",
                .Glag: "ⱂ",
                .Grek: "π",
                .Perm: "𐍟",
                .Runr: "ᛈ",
            ]
        )
    }
}
