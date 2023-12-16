//
//  testSubstantiveMasculineLabel2AndLabel3.swift
//
//
//  Created by Roman Kerimov on 7/12/23.
//

import Foundation

extension WordTests {
    func testSubstantiveMasculineLabel2AndLabel3() {
        // MARK: 1c(1)(2)
        
        XCTAssert(
            word: "glaz",
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
