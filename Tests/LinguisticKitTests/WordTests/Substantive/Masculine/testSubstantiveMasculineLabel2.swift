//
//  testSubstantiveMasculineLabel2.swift
//  
//
//  Created by Roman Kerimov on 7/12/23.
//

import Foundation

extension WordTests {
    func testSubstantiveMasculineLabel2() {
        // MARK: 1a(2)
        
        XCTAssert(
            word: "gruzín",
            forms: SubstantiveForms(
                nominative: ("gruzín", "gruzínyi"),
                genitive: ("gruzína", "gruzín"),
                dative: ("gruzínu", "gruzínam"),
                accusative: ("gruzína", "gruzín"),
                instrumental: ("gruzínom", "gruzínami"),
                prepositional: ("gruzíne", "gruzínakh")
            )
        )
        
        // MARK: 1c(2)
        
        XCTAssert(
            word: "raz",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 1e(2)
        
        XCTAssert(
            word: "vólos",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 3b(2)
        
        XCTAssert(
            word: "sapóg",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 5a(2)
        
        XCTAssert(
            word: "gerc",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 3*a(2)
        
        XCTAssert(
            word: "botínok",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 3*a(2)
        
        XCTAssert(
            word: "botínochek",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 3*b(2)
        
        XCTAssert(
            word: "chulók",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 3*d(2)
        
        XCTAssert(
            word: "glazók",
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
            word: "rozhók",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 1a[(2)]
        
        XCTAssert(
            word: "madjyár",
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
            word: "madjyár",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 3a[(2)]
        
        XCTAssert(
            word: "chuvyák",
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
            word: "chuvyák",
            forms: SubstantiveForms(
                nominative: ("", ""),
                genitive: ("", ""),
                dative: ("", ""),
                accusative: ("", ""),
                instrumental: ("", ""),
                prepositional: ("", "")
            )
        )
        
        // MARK: 3*a[(2)]
        
        XCTAssert(
            word: "cherevíchek",
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
            word: "cherevíchek",
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
