//
//  ScriptTable.Cell.c.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var c: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "c",
                .Cyrl: "ц",
                .Glag: "ⱌ",
                //.Grek: "",
                .Perm: "𐍭",
                .Runr: "ᚳ",
            ]
        )
    }
}
