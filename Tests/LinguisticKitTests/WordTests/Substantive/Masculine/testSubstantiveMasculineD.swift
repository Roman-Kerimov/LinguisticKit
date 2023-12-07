//
//  testSubstantiveMasculineD.swift
//  
//
//  Created by Roman Kerimov on 7/12/23.
//

import Foundation

extension WordTests {
    func testSubstantiveMasculineD() {
        // MARK: 1d
        XCTAssert(
            word: "kol",
            forms: SubstantiveForms(
                nominative: ("kol", "kóljya"),
                genitive: ("kolá", "kóljyev"),
                dative: ("kolú", "kóljyam"),
                accusative: ("kol", "kóljya"),
                instrumental: ("kolóm", "kóljyami"),
                prepositional: ("kolé", "kóljyakh"),
                locative: ("kolú", "kóljyakh")
            )
        )
        
        // MARK: 3d
        XCTAssert(
            word: "kazák",
            forms: SubstantiveForms(
                nominative: ("kazák", "kazáki"),
                genitive: ("kazaká", "kazákov"),
                dative: ("kazakú", "kazákam"),
                accusative: ("kazaká", "kazákov"),
                instrumental: ("kazakóm", "kazákami"),
                prepositional: ("kazaké", "kazákakh")
            )
        )
    }
}
