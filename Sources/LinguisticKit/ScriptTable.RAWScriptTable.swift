//
//  ScriptTable.RAWScriptTable.swift
//  
//
//  Created by Roman Kerimov on 2022-04-08.
//

import Foundation

extension ScriptTable.RAWScriptTable {
    
    static func cell(
        _ scriptElements: [Script: String],
        type: ScriptTable.Cell.ElementType = .other,
        prefixContext: ScriptTable.Cell.ContextType = .any,
        postfixContext: ScriptTable.Cell.ContextType = .any
    ) -> Self {
        [ScriptTable.Cell(scriptElements, type: type, prefixContext: prefixContext, postfixContext: postfixContext)]
    }
    
    func cell(
        _ scriptElements: [Script: String],
        type: ScriptTable.Cell.ElementType = .other,
        prefixContext: ScriptTable.Cell.ContextType = .any,
        postfixContext: ScriptTable.Cell.ContextType = .any
    ) -> Self {
        self + [
            ScriptTable.Cell(scriptElements, type: type, prefixContext: prefixContext, postfixContext: postfixContext)
        ]
    }
    
    static func cell(type: ScriptTable.Cell.ElementType = .other, _ scriptElements: [Script: String]) -> Self {
        [ScriptTable.Cell(type: type, scriptElements)]
    }
    
    func cell(type: ScriptTable.Cell.ElementType = .other, _ scriptElements: [Script: String]) -> Self {
        self + [ScriptTable.Cell(type: type, scriptElements)]
    }
    
    func callAsFunction(_ script: Script, _ element: String) -> Self {
        [last!(script, element)]
    }
}
