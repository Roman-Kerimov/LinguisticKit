//
//  ScriptTable.Cell.dh.swift
//  
//
//  Created by Roman Kerimov on 2022-08-15.
//

extension ScriptTable.RAWScriptTable {
    var dh: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "dh",
                .Cyrl: "ҙ",
                .Glag: "ҙ",
                //.Grek: "",
                .Perm: "𐍓𐍸",
                .Runr: "ᚧ",
            ]
        )
    }
}
