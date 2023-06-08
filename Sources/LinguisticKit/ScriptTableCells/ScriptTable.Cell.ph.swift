//
//  ScriptTable.Cell.ph.swift
//  
//
//  Created by Roman Kerimov on 2020-09-01.
//

extension ScriptTable.RAWScriptTable {
    var ph: Self {
        self + .cell(
            type: .consonant,
            [
                .Latn: "ph",
                .Cyrl: "ф",
                .Glag: "ⱇ",
                .Grek: "φ",
                .Runr: "ᛈᚺ",
            ]
        )
    }
}
