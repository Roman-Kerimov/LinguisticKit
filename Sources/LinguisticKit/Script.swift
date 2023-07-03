//
//  Script.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2018-11-18.
//

public enum Script: String, CaseIterable {
    static let caseSensitiveScripts: Set<Self> = [.Cyrl, .Glag, .Grek, .Latn]
    
    case Cyrl
    case Glag
    case Grek
    case Hira
    case Hrkt
    case Jpan
    case Kana
    case Latn
    case Perm
    case Runr
}
