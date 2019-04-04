//
//  ScriptTable.az.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-04-04.
//

public extension ScriptTable {
    
    static let az: ScriptTable = .init(languageCode: "az") { () -> ScriptTable.RAWScriptTable in
        return [
            [.Latn: "a", .Cyrl: "а"],
            [.Latn: "b", .Cyrl: "б"],
            [.Latn: "c", .Cyrl: "ҹ"],
            [.Latn: "ç", .Cyrl: "ч"],
            [.Latn: "d", .Cyrl: "д"],

            [.Latn: "e", .Cyrl: "е"],
            [.Latn: "ə", .Cyrl: "ә"],
            [.Latn: "f", .Cyrl: "ф"],
            [.Latn: "g", .Cyrl: "ҝ"],
            [.Latn: "ğ", .Cyrl: "ғ"],
            [.Latn: "h", .Cyrl: "һ"],
            [.Latn: "x", .Cyrl: "х"],
            [.Latn: "ı", .Cyrl: "ы"],
            [.Latn: "i", .Cyrl: "и"],
            [.Latn: "j", .Cyrl: "ж"],
            [.Latn: "k", .Cyrl: "к"],
            [.Latn: "q", .Cyrl: "г"],
            [.Latn: "l", .Cyrl: "л"],
            [.Latn: "m", .Cyrl: "м"],
            [.Latn: "n", .Cyrl: "н"],
            [.Latn: "o", .Cyrl: "о"],
            [.Latn: "ö", .Cyrl: "ө"],
            [.Latn: "p", .Cyrl: "п"],
            [.Latn: "r", .Cyrl: "р"],
            [.Latn: "s", .Cyrl: "с"],
            [.Latn: "ş", .Cyrl: "ш"],
            [.Latn: "t", .Cyrl: "т"],
            [.Latn: "u", .Cyrl: "у"],
            [.Latn: "ü", .Cyrl: "ү"],
            [.Latn: "v", .Cyrl: "в"],
            [.Latn: "y", .Cyrl: "ј"],
            [.Latn: "z", .Cyrl: "з"],
        ]
    }
}
