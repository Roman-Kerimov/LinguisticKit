//
//  ScriptTransformation.swift
//  
//
//  Created by Roman Kerimov on 2022-08-14.
//

import Foundation

struct ScriptTransformation {
    let scriptTableTransformation: ScriptTableTransformation?
    struct ScriptTableTransformation {
        let scriptTable: ScriptTable
        let targetScript: Script
    }
    
    init(scriptTable: ScriptTable, targetScript: Script) {
        scriptTableTransformation = ScriptTableTransformation(scriptTable: scriptTable, targetScript: targetScript)
        mathAlphanumericTransformation = nil
    }
    
    let mathAlphanumericTransformation: MathAlphanumericTransformation?
    struct MathAlphanumericTransformation {
        let targetMathAlphanumericType: MathAlphanumericType
    }
    
    init(targetMathAlphanumericType: MathAlphanumericType) {
        scriptTableTransformation = nil
        mathAlphanumericTransformation = MathAlphanumericTransformation(
            targetMathAlphanumericType: targetMathAlphanumericType
        )
    }
}
