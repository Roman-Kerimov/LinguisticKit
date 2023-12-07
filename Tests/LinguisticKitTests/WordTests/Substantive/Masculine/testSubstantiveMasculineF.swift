//
//  testSubstantiveMasculineF.swift
//  
//
//  Created by Roman Kerimov on 7/12/23.
//

import Foundation

extension WordTests {
    func testSubstantiveMasculineF() {
        // MARK: 2f
        XCTAssert(
            word: "konj",
            forms: SubstantiveForms(
                nominative: ("konj", "kóni"),
                genitive: ("konyá", "konéj"),
                dative: ("konyú", "konyám"),
                accusative: ("konyá", "konéj"),
                instrumental: ("konyóm", "konyámi"),
                prepositional: ("koné", "konyákh")
            )
        )
    }
}
