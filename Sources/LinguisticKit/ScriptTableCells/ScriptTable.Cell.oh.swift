//
//  ScriptTable.Cell.oh.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var oh: Self {
        self + .cell(
            type: .vowel,
            [
                .Latn: "oh",
                .Cyrl: "ѡ",
                .Glag: "ⱉ",
                .Grek: "ω",
                .Perm: "𐍪",
                .Runr: "ᛟᚺ",
            ]
        )
    }
}
