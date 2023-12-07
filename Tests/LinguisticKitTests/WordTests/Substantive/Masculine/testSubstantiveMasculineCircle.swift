//
//  testSubstantiveMasculineCircle.swift
//  
//
//  Created by Roman Kerimov on 7/12/23.
//

import Foundation

extension WordTests {
    func testSubstantiveMasculineCircle() {
        // MARK: 1°a
        
        XCTAssert(
            word: "rímlyanin",
            forms: SubstantiveForms(
                nominative: ("rímlyanin", "rímlyane"),
                genitive: ("rímlyanina", "rímlyan"),
                dative: ("rímlyaninu", "rímlyanam"),
                accusative: ("rímlyanina", "rímlyan"),
                instrumental: ("rímlyaninu", "rímlyanam"),
                prepositional: ("rímlyanine", "rímlyanakh")
            )
        )
        
        XCTAssert(
            word: "yuzhánin",
            forms: SubstantiveForms(
                nominative: ("yuzhánin", "yuzháne"),
                genitive: ("yuzhánina", "yuzhán"),
                dative: ("yuzháninu", "yuzhánam"),
                accusative: ("yuzhánina", "yuzhán"),
                instrumental: ("yuzháninom", "yuzhánami"),
                prepositional: ("yuzhánine", "yuzhánakh")
            )
        )
        
        XCTAssert(
            word: "armyanín",
            forms: SubstantiveForms(
                nominative: ("armyanín", "armyáne"),
                genitive: ("armyanína", "armyán"),
                dative: ("armyanínu", "armyánam"),
                accusative: ("armyanína", "armyán"),
                instrumental: ("armyanínom", "armyánami"),
                prepositional: ("armyaníne", "armyánakh")
            )
        )
        
        XCTAssert(
            word: "boyárin",
            forms: SubstantiveForms(
                nominative: ("boyárin", "boyáre"),
                genitive: ("boyárina", "boyár"),
                dative: ("boyárinu", "boyáram"),
                accusative: ("boyárina", "boyár"),
                instrumental: ("boyárinom", "boyárami"),
                prepositional: ("boyárine", "boyárakh")
            )
        )
        
        // MARK: 1°c (1)
        
        XCTAssert(
            word: "gospodín",
            forms: SubstantiveForms(
                nominative: ("gospodín", "gospodá"),
                genitive: ("gospodína", "gospód"),
                dative: ("gospodínu", "gospodám"),
                accusative: ("gospodína", "gospód"),
                instrumental: ("gospodínom", "gospodámi"),
                prepositional: ("gospodíne", "gospodákh")
            )
        )
        
        // MARK: 1°c
        
        XCTAssert(
            word: "shúrin",
            forms: SubstantiveForms(
                nominative: ("shúrin", "shurjyá"),
                genitive: ("shúrina", "shurjyov"),
                dative: ("shúrinu", "shurjyám"),
                accusative: ("shúrina", "shurjyóv"),
                instrumental: ("shúrinom", "shurjyámi"),
                prepositional: ("shúrine", "shurjyákh")
            )
        )
        
        // MARK: 3°a
        
        XCTAssert(
            word: "cyiplyonok",
            forms: SubstantiveForms(
                nominative: ("cyiplyonok", "cyiplyáta"),
                genitive: ("cyiplyonka", "cyiplyát"),
                dative: ("cyiplyonku", "cyiplyátam"),
                accusative: ("cyiplyonka", "cyiplyát"),
                instrumental: ("cyiplyonkom", "cyiplyátami"),
                prepositional: ("cyiplyonke", "cyiplyátakh")
            )
        )
        
        XCTAssert(
            word: "maslyonok",
            forms: SubstantiveForms(
                nominative: ("maslyonok", "maslyáta"),
                genitive: ("maslyonka", "maslyát"),
                dative: ("maslyonku", "maslyátam"),
                accusative: ("maslyonok", "maslyáta"),
                instrumental: ("maslyonkom", "maslyátami"),
                prepositional: ("maslyonke", "maslyátakh")
            )
        )
        
        XCTAssert(
            word: "opyonok",
            forms: SubstantiveForms(
                nominative: ("opyonok", "opyáta"),
                genitive: ("opyonka", "opyát"),
                dative: ("opyonkam", "opyátam"),
                accusative: ("opyonok", "opyáta"),
                instrumental: ("opyonkom", "opyátami"),
                prepositional: ("opyonke", "opyátakh")
            )
        )
        
        XCTAssert(
            word: "myishónok",
            forms: SubstantiveForms(
                nominative: ("myishónok", "myisháta"),
                genitive: ("myishónka", "myishát"),
                dative: ("myishónku", "myishátam"),
                accusative: ("myishónka", "myishát"),
                instrumental: ("myishónkom", "myishátami"),
                prepositional: ("myishónke", "myishátakh")
            )
        )
        
        XCTAssert(
            word: "cyiplyonochek",
            forms: SubstantiveForms(
                nominative: ("cyiplyonochek", "cyiplyátki"),
                genitive: ("cyiplyonochka", "cyiplyátok"),
                dative: ("cyiplyonochku", "cyiplyátkam"),
                accusative: ("cyiplyonochka", "cyiplyátok"),
                instrumental: ("cyiplyonochkom", "cyiplyátkami"),
                prepositional: ("cyiplyonochke", "cyiplyátkakh")
            )
        )
        
        XCTAssert(
            word: "myishónochek",
            forms: SubstantiveForms(
                nominative: ("myishónochek", "myishátki"),
                genitive: ("myishónochka", "myishátok"),
                dative: ("myishónochku", "myishátkam"),
                accusative: ("myishónochka", "myishátok"),
                instrumental: ("myishónochkom", "myishátkami"),
                prepositional: ("myishónochke", "myishátkakh")
            )
        )
        
        // MARK: 3°d
        
        XCTAssert(
            word: "sjhenók",
            forms: SubstantiveForms(
                nominative: ("sjhenók", "sjhenyáta"),
                genitive: ("sjhenká", "sjhenyát"),
                dative: ("sjhenkú", "sjhenyátam"),
                accusative: ("sjhenká", "sjhenyát"),
                instrumental: ("sjhenkóm", "sjhenyátami"),
                prepositional: ("sjhenké", "sjhenyátakh")
            )
        )
    }
}
