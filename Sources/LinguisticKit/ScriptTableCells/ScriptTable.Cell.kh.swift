//
//  ScriptTable.Cell.kh.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var kh: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "kh",
                .Cyrl: "х",
                .Glag: "ⱈ",
                .Grek: "χ",
                .Perm: "𐍬",
                .Runr: "ᚲᚺ",
            ]
        )
    }
}
