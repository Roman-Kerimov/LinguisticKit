//
//  SubstantiveForms.swift
//  
//
//  Created by Roman Kerimov on 30/11/23.
//

import Foundation

struct SubstantiveForms: WordForms {
    typealias GrammaticalNumbers = (singular: String, plural: String)
    
    let forms: [String]
    
    init(
        nominative: GrammaticalNumbers,
        genitive: GrammaticalNumbers,
        dative: GrammaticalNumbers,
        accusative: GrammaticalNumbers,
        instrumental: GrammaticalNumbers,
        prepositional: GrammaticalNumbers
    ) {
        let grammaticalCases = [nominative, genitive, dative, accusative, instrumental, prepositional]
        forms = grammaticalCases.map(\.singular) + grammaticalCases.map(\.plural)
    }
}
