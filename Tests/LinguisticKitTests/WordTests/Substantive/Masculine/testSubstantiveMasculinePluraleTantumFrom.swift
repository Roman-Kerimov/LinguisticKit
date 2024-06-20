//
//  testSubstantiveMasculinePluraleTantumFrom.swift
//
//
//  Created by Roman Kerimov on 18/12/23.
//

import Foundation

extension WordTests {
    func testSubstantiveMasculinePluraleTantumFrom() {
        XCTAssert(
            word: "sapogí",
            forms: SubstantiveForms(
                nominative: ("sapogí", "sapogí"),
                genitive: ("sapóg", "sapóg"),
                dative: ("sapogám", "sapogám"),
                accusative: ("sapogí", "sapogí"),
                instrumental: ("sapogámi", "sapogámi"),
                prepositional: ("sapogákh", "sapogákh")
            )
        )
        
        XCTAssert(
            word: "glazá",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        XCTAssert(
            word: "chuvyáki",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        XCTAssert(
            word: "pogónyi",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        XCTAssert(
            word: "konjkí",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        XCTAssert(
            word: "válenki",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
    }
}