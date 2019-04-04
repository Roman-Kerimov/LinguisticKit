//
//  Script.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2018-11-18.
//

public enum Script: CaseIterable {
    
    var identifier: String {
        return .init(describing: self)
    }
    
    case Cyrl
    case Glag
    case Latn
}
