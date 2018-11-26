//
//  Character.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2018-11-22.
//

extension Character {
    var isUppercase: Bool {
        return CharacterSet.uppercaseLetters.contains(unicodeScalars.first!)
    }
    
    var isLowercase: Bool {
        return CharacterSet.lowercaseLetters.contains(unicodeScalars.first!)
    }
    
    var isCased: Bool {
        return CharacterSet.lowercaseLetters.union(.uppercaseLetters).contains(unicodeScalars.first!)
    }
}
