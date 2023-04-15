//
//  scriptTransformationCodes.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-03-20.
//

let scriptTransformationCodes: [String: ScriptTransformation] = [
    "az": ScriptTransformation(scriptTable: .az, targetScript: .Cyrl),
    "azL": ScriptTransformation(scriptTable: .az, targetScript: .Latn),
    "be": ScriptTransformation(scriptTable: .be, targetScript: .Cyrl),
    "beL": ScriptTransformation(scriptTable: .be, targetScript: .Latn),
    "bs": ScriptTransformation(scriptTable: .bs, targetScript: .Cyrl),
    "bsL": ScriptTransformation(scriptTable: .bs, targetScript: .Latn),
    "cnr": ScriptTransformation(scriptTable: .cnr, targetScript: .Cyrl),
    "cnrL": ScriptTransformation(scriptTable: .cnr, targetScript: .Latn),
    "el": ScriptTransformation(scriptTable: .el, targetScript: .Grek),
    "elL": ScriptTransformation(scriptTable: .el, targetScript: .Latn),
    "gr": ScriptTransformation(scriptTable: .gr, targetScript: .Grek),
    "grL": ScriptTransformation(scriptTable: .gr, targetScript: .Latn),
    "jh": ScriptTransformation(scriptTable: .ja, targetScript: .Hira),
    "jk": ScriptTransformation(scriptTable: .ja, targetScript: .Kana),
    "jr": ScriptTransformation(scriptTable: .ja, targetScript: .Latn),
    "me": ScriptTransformation(scriptTable: .cnr, targetScript: .Cyrl),
    "meL": ScriptTransformation(scriptTable: .cnr, targetScript: .Latn),
    "mk": ScriptTransformation(scriptTable: .mk, targetScript: .Cyrl),
    "mkL": ScriptTransformation(scriptTable: .mk, targetScript: .Latn),
    "ru": ScriptTransformation(scriptTable: .ru, targetScript: .Cyrl),
    "ruG": ScriptTransformation(scriptTable: .ru, targetScript: .Glag),
    "ruL": ScriptTransformation(scriptTable: .ru, targetScript: .Latn),
    "sr": ScriptTransformation(scriptTable: .sr, targetScript: .Cyrl),
    "srL": ScriptTransformation(scriptTable: .sr, targetScript: .Latn),
    "uk": ScriptTransformation(scriptTable: .uk, targetScript: .Cyrl),
    "ukL": ScriptTransformation(scriptTable: .uk, targetScript: .Latn),
    
    "serif": ScriptTransformation(targetMathAlphanumericType: .serif),
    "serifB": ScriptTransformation(targetMathAlphanumericType: .serifBold),
    "serifI": ScriptTransformation(targetMathAlphanumericType: .serifItalic),
    "serifBI": ScriptTransformation(targetMathAlphanumericType: .serifBoldItalic),
    "sans": ScriptTransformation(targetMathAlphanumericType: .sansSerif),
    "sansB": ScriptTransformation(targetMathAlphanumericType: .sansSerifBold),
    "sansI": ScriptTransformation(targetMathAlphanumericType: .sansSerifItalic),
    "sansBI": ScriptTransformation(targetMathAlphanumericType: .sansSerifBoldItalic),
    "script": ScriptTransformation(targetMathAlphanumericType: .script),
    "scriptB": ScriptTransformation(targetMathAlphanumericType: .scriptBold),
    "fraktur": ScriptTransformation(targetMathAlphanumericType: .fraktur),
    "frakturB": ScriptTransformation(targetMathAlphanumericType: .frakturBold),
    "mono": ScriptTransformation(targetMathAlphanumericType: .monospace),
    "double": ScriptTransformation(targetMathAlphanumericType: .doubleStruck),
]
