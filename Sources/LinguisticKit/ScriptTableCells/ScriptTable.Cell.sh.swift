//
//  ScriptTable.Cell.sh.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var sh: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "sh",
                .Cyrl: "ш",
                .Glag: "ⱎ",
                .Grek: "ϸ",
                .Perm: "𐍥",
                .Runr: "ᛊᚺ",
            ]
        )
    }
}
