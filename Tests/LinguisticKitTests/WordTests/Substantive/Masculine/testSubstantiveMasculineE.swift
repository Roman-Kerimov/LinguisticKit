//
//  testSubstantiveMasculineE.swift
//  
//
//  Created by Roman Kerimov on 7/12/23.
//

import Foundation

extension WordTests {
    func testSubstantiveMasculineE() {
        // MARK: 1e
        XCTAssert(
            word: "zub",
            forms: SubstantiveForms(
                nominative: ("zub", "zúbyi"),
                genitive: ("zúba", "zubóv"),
                dative: ("zúbu", "zubám"),
                accusative: ("zub", "zúbyi"),
                instrumental: ("zúbom", "zubámi"),
                prepositional: ("zúbe", "zubákh")
            )
        )
        
        // MARK: 2e
        XCTAssert(
            word: "gólubj",
            forms: SubstantiveForms(
                nominative: ("gólubj", "gólubi"),
                genitive: ("gólubya", "golubéj"),
                dative: ("gólubyu", "golubyám"),
                accusative: ("gólubya", "golubéj"),
                instrumental: ("gólubem", "golubyámi"),
                prepositional: ("gólube", "golubyákh")
            )
        )
        
        // MARK: 3e
        XCTAssert(
            word: "volk",
            forms: SubstantiveForms(
                nominative: ("volk", "vólki"),
                genitive: ("vólka", "volkóv"),
                dative: ("vólku", "volkám"),
                accusative: ("vólka", "volkóv"),
                instrumental: ("vólkom", "volkámi"),
                prepositional: ("vólke", "volkákh")
            )
        )
        
        // MARK: 4e
        XCTAssert(
            word: "óbruch",
            forms: SubstantiveForms(
                nominative: ("óbruch", "óbruchi"),
                genitive: ("óbrucha", "obruchéj"),
                dative: ("óbruchu", "obruchám"),
                accusative: ("óbruch", "óbruchi"),
                instrumental: ("óbruchem", "obruchámi"),
                prepositional: ("óbruche", "obruchákh")
            )
        )
    }
}
