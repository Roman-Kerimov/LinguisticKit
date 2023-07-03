//
//  ScriptTable.Cell.y.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var y: Self {
        self + .cell(
            type: .vowel,
            [
                .Latn: "y",
                .Cyrl: "ѵ",
                .Glag: "ⱛ",
                .Grek: "υ",
                .Perm: "𐍧𐍶",
                .Runr: "ᚤ",
            ]
        )
    }
}
