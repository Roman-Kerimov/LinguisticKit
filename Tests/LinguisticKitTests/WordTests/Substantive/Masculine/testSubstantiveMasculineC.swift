//
//  testSubstantiveMasculineC.swift
//  
//
//  Created by Roman Kerimov on 7/12/23.
//

import Foundation

extension WordTests {
    func testSubstantiveMasculineC() {
        // MARK: 1c
        XCTAssert(
            word: "dar",
            forms: SubstantiveForms(
                nominative: ("dar", "daryí"),
                genitive: ("dára", "daróv"),
                dative: ("dáru", "darám"),
                accusative: ("dar", "daryí"),
                instrumental: ("dárom", "darámi"),
                prepositional: ("dáre", "darákh")
            )
        )
        
        // MARK: 3c
        XCTAssert(
            word: "plug",
            forms: SubstantiveForms(
                nominative: ("plug", "plugí"),
                genitive: ("plúga", "plugóv"),
                dative: ("plúgu", "plugám"),
                accusative: ("plug", "plugí"),
                instrumental: ("plúgom", "plugámi"),
                prepositional: ("plúge", "plugákh")
            )
        )
        
        // MARK: 4c
        XCTAssert(
            word: "kharch",
            forms: SubstantiveForms(
                nominative: ("kharch", "kharchí"),
                genitive: ("khárcha", "kharchéj"),
                dative: ("khárchu", "kharchám"),
                accusative: ("khárch", "kharchí"),
                instrumental: ("khárchem", "kharchámi"),
                prepositional: ("khárche", "kharchákh")
            )
        )
        
        // MARK: 6c
        XCTAssert(
            word: "buj",
            forms: SubstantiveForms(
                nominative: ("buj", "buí"),
                genitive: ("búya", "buyov"),
                dative: ("búyu", "buyám"),
                accusative: ("búj", "buí"),
                instrumental: ("búyem", "buyámi"),
                prepositional: ("búye", "buyákh")
            )
        )
        
        // MARK: 7c
        XCTAssert(
            word: "kij",
            forms: SubstantiveForms(
                nominative: ("kij", "kií"),
                genitive: ("kíya", "kiyov"),
                dative: ("kíyu", "kiyám"),
                accusative: ("kij", "kií"),
                instrumental: ("kíyem", "kiyámi"),
                prepositional: ("kíye", "kiyákh")
            )
        )
    }
}
