//
//  ScriptTable.el.swift
//  
//
//  Created by Roman Kerimov on 2020-08-26.
//

extension ScriptTable {
    static let el = ScriptTable(languageCode: "el", defaultScript: .Grek) {
        .GreekShared + [
            .v,
            .ih,
            .f,
        ]
    }
}


