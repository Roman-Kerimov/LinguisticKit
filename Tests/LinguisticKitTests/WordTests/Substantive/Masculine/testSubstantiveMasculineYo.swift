//
//  testSubstantiveMasculineYo.swift
//
//
//  Created by Roman Kerimov on 17/12/23.
//

import Foundation

extension WordTests {
    func testSubstantiveMasculineYo() {
        // MARK: 1b yo
        
        XCTAssert(
            word: "osyotr",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 1c yo
        
        XCTAssert(
            word: "myod",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", ""),
                locative: ("", ""),
                partitive: ("", "")
            )
        )
        
        // MARK: 1e yo
        
        XCTAssert(
            word: "chyort",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 2e yo
        
        XCTAssert(
            word: "zhyoludj",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 4b yo
        
        XCTAssert(
            word: "yozh",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 1c(1) yo
        
        XCTAssert(
            word: "zhyornov",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 3c(1) yo
        
        XCTAssert(
            word: "shyolk",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", ""),
                locative: ("", ""),
                partitive: ("", "")
            )
        )
    }
}
