//
//  ScriptTable.Cell.o.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var o: Self {
        self + .cell(
            type: .vowel,
            [
                .Latn: "o",
                .Cyrl: "о",
                .Glag: "ⱁ",
                .Grek: "ο",
            ]
        )
    }
}
