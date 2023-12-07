//
//  testSubstantiveMasculineLabel1.swift
//  
//
//  Created by Roman Kerimov on 7/12/23.
//

import Foundation

extension WordTests {
    func testSubstantiveMasculineLabel1() {
        // MARK: 1b(1)
        
        XCTAssert(
            word: "rukáv",
            forms: SubstantiveForms(
                nominative: ("rukáv", "rukavá"),
                genitive: ("rukavá", "rukavóv"),
                dative: ("rukavú", "rukavám"),
                accusative: ("rukáv", "rukavá"),
                instrumental: ("rukavóm", "rukavámi"),
                prepositional: ("rukavé", "rukavákh")
            )
        )
        
        // MARK: 1c(1)
        
        XCTAssert(
            word: "máster",
            forms: SubstantiveForms(
                nominative: ("máster", "masterá"),
                genitive: ("mástera", "masteróv"),
                dative: ("másteru", "masterám"),
                accusative: ("mástera", "masteróv"),
                instrumental: ("másterom", "masterámi"),
                prepositional: ("mástere", "masterákh")
            )
        )
        
        // MARK: 2c(1)
        
        XCTAssert(
            word: "yákorj",
            forms: SubstantiveForms(
                nominative: ("yákorj", "yakoryá"),
                genitive: ("yákorya", "yakoréj"),
                dative: ("yákoryu", "yakoryám"),
                accusative: ("yákorj", "yakoryá"),
                instrumental: ("yákorem", "yakoryámi"),
                prepositional: ("yákore", "yakoryákh")
            )
        )
        
        // MARK: 3b(1)
        
        XCTAssert(
            word: "obshlág",
            forms: SubstantiveForms(
                nominative: ("obshlág", "obshlagá"),
                genitive: ("obshlagá", "obshlagóv"),
                dative: ("obshlagú", "obshlagám"),
                accusative: ("obshlág", "obshlagá"),
                instrumental: ("obshlagóm", "obshlagámi"),
                prepositional: ("obshlagé", "obshlagákh")
            )
        )
        
        // MARK: 3c(1)
        
        XCTAssert(
            word: "ókrug",
            forms: SubstantiveForms(
                nominative: ("ókrug", "okrugá"),
                genitive: ("ókruga", "okrugóv"),
                dative: ("ókrugu", "okrugám"),
                accusative: ("ókrug", "okrugá"),
                instrumental: ("ókrugom", "okrugámi"),
                prepositional: ("ókruge", "okrugákh")
            )
        )
        
        // MARK: 4c(1)
        
        XCTAssert(
            word: "stórozh",
            forms: SubstantiveForms(
                nominative: ("stórozh", "storozhá"),
                genitive: ("stórozha", "storozhéj"),
                dative: ("stórozhu", "storozhám"),
                accusative: ("stórozha", "storozhéj"),
                instrumental: ("stórozhem", "storozhámi"),
                prepositional: ("stórozhe", "storozhákh")
            )
        )
        
        // MARK: 6c(1)
        
        XCTAssert(
            word: "kráj",
            forms: SubstantiveForms(
                nominative: ("kráj", "krayá"),
                genitive: ("kráya", "krayov"),
                dative: ("kráyu", "krayám"),
                accusative: ("kráj", "krayá"),
                instrumental: ("kráyem", "krayámi"),
                prepositional: ("kráye", "krayákh"),
                locative: ("krayú", "krayákh")
            )
        )
        
        // MARK: 1*c(1)
        
        XCTAssert(
            word: "prómyisel",
            forms: SubstantiveForms(
                nominative: ("prómyisel", ""),
                genitive: ("prómyisla", ""),
                dative: ("prómyislu", ""),
                accusative: ("prómyisel", ""),
                instrumental: ("prómyislom", ""),
                prepositional: ("prómyisle", "")
            )
        )
        
        XCTAssert(
            word: "véter",
            forms: SubstantiveForms(
                nominative: ("véter", "vetrá"),
                genitive: ("vétra", "vetróv"),
                dative: ("vétru", "vetrám"),
                accusative: ("véter", "vétryi"),
                instrumental: ("vétrom", "vetrámi"),
                prepositional: ("vétre", "vetrákh"),
                locative: ("vetrú", "vetrákh")
            )
        )
        
        // MARK: 1°c(1)
        
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
    }
}
