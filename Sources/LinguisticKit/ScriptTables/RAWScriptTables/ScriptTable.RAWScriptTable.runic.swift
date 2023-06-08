//
//  ScriptTable.RAWScriptTable.runes.swift
//  
//
//  Created by Roman Kerimov on 2022-08-15.
//

extension ScriptTable.RAWScriptTable {
    static let runes = ScriptTable.RAWScriptTable()
        .f // ᚠ RUNIC LETTER FEHU FEOH FE F
        .v // ᚡ RUNIC LETTER V
        .u // ᚢ RUNIC LETTER URUZ UR U
        // ᚣ RUNIC LETTER YR
        // ᚤ RUNIC LETTER Y
        .w // ᚥ RUNIC LETTER W
        .th // ᚦ RUNIC LETTER THURISAZ THURS THORN
        .dh // ᚧ RUNIC LETTER ETH
        .a // ᚨ RUNIC LETTER ANSUZ A
        // ᚩ RUNIC LETTER OS O
        // ᚪ RUNIC LETTER AC A
        .cell([.Latn: "æ", .Runr: "ᚫ"]) // ᚫ RUNIC LETTER AESC
        .cell([.Latn: "ą", .Runr: "ᚬ"]) // ᚬ RUNIC LETTER LONG-BRANCH-OSS O
    
}
