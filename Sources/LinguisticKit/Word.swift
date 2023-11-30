//
//  Word.swift
//
//
//  Created by Roman Kerimov on 30/11/23.
//

import Foundation

struct Word {
    let initialForm: String
    
    var forms: [String] {
        return []
    }
}

extension Word: ExpressibleByStringInterpolation {
    init(stringLiteral value: StringLiteralType) {
        initialForm = value
    }
}
