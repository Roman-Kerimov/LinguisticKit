//
//  WordTests.swift
//
//
//  Created by Roman Kerimov on 30/11/23.
//

import XCTest
@testable import LinguisticKit

final class WordTests: XCTestCase {
    func testSubstantiveMasculine1_7a() {
        XCTAssert(
            word: "zavód",
            forms: SubstantiveForms(
                nominative: ("zavód", "zavódyi"),
                genitive: ("zavóda", "zavódov"),
                dative: ("zavódu", "zavódam"),
                accusative: ("zavód", "zavódyi"),
                instrumental: ("zavódom", "zavódami"),
                prepositional: ("zavóde", "zavódakh")
            )
        )
        
        XCTAssert(
            word: "artíst",
            forms: SubstantiveForms(
                nominative: ("artíst", "artístyi"),
                genitive: ("artísta", "artístov"),
                dative: ("artístu", "artístam"),
                accusative: ("artísta", "artístov"),
                instrumental: ("artístom", "artístami"),
                prepositional: ("artíste", "artístakh")
            )
        )
        
        XCTAssert(
            word: "portfélj",
            forms: SubstantiveForms(
                nominative: ("portfélj", "portféli"),
                genitive: ("portfélya", "portfélej"),
                dative: ("portfélyu", "portfélyam"),
                accusative: ("portfélj", "portféli"),
                instrumental: ("portfélem", "portfélyami"),
                prepositional: ("portféle", "portfélyakh")
            )
        )
        
        XCTAssert(
            word: "zhítelj",
            forms: SubstantiveForms(
                nominative: ("zhítelj", "zhíteli"),
                genitive: ("zhítelya", "zhítelej"),
                dative: ("zhítelyu", "zhítelyam"),
                accusative: ("zhítelya", "zhítelej"),
                instrumental: ("zhítelem", "zhítelyami"),
                prepositional: ("zhítele", "zhítelyakh")
            )
        )
        
        XCTAssert(
            word: "chájnik",
            forms: SubstantiveForms(
                nominative: ("chájnik", "chájniki"),
                genitive: ("chájnika", "chájnikov"),
                dative: ("chájniku", "chájnikam"),
                accusative: ("chájnik", "chájniki"),
                instrumental: ("chájnikom", "chájnikami"),
                prepositional: ("chájnike", "chájnikakh")
            )
        )
        
        XCTAssert(
            word: "buljdóg",
            forms: SubstantiveForms(
                nominative: ("buljdóg", "buljdógi"),
                genitive: ("buljdóga", "buljdógov"),
                dative: ("buljdógu", "buljdógam"),
                accusative: ("buljdóga", "buljdógov"),
                instrumental: ("buljdógom", "buljdógami"),
                prepositional: ("buljdóge", "buljdógakh")
            )
        )
        
        XCTAssert(
            word: "marsh",
            forms: SubstantiveForms(
                nominative: ("marsh", "márshi"),
                genitive: ("mársha", "márshej"),
                dative: ("márshu", "mársham"),
                accusative: ("marsh", "márshi"),
                instrumental: ("márshem", "márshami"),
                prepositional: ("márshe", "márshakh")
            )
        )
        
        XCTAssert(
            word: "továrisjh",
            forms: SubstantiveForms(
                nominative: ("továrisjh", "továrisjhi"),
                genitive: ("továrisjha", "továrisjhej"),
                dative: ("továrisjhu", "továrisjham"),
                accusative: ("továrisjha", "továrisjhej"),
                instrumental: ("továrisjhem", "továrisjhami"),
                prepositional: ("továrisjhe", "továrisjhakh")
            )
        )
        
        XCTAssert(
            word: "mésyac",
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
            word: "princ",
            forms: SubstantiveForms(
                nominative: ("princ", "príncyi"),
                genitive: ("prínca", "príncev"),
                dative: ("príncu", "príncam"),
                accusative: ("prínca", "príncev"),
                instrumental: ("príncem", "príncami"),
                prepositional: ("prínce", "príncakh")
            )
        )
        
        XCTAssert(
            word: "slúchaj",
            forms: SubstantiveForms(
                nominative: ("slúchaj", "slúchai"),
                genitive: ("slúchaya", "slúchayev"),
                dative: ("slúchayu", "slúchayam"),
                accusative: ("slúchaj", "slúchai"),
                instrumental: ("slúchayem", "slúchayami"),
                prepositional: ("slúchaye", "slúchayakh")
            )
        )
        
        XCTAssert(
            word: "gerój",
            forms: SubstantiveForms(
                nominative: ("gerój", "gerói"),
                genitive: ("geróya", "geróyev"),
                dative: ("geróyu", "geróyam"),
                accusative: ("geróya", "geróyev"),
                instrumental: ("geróyem", "geróyami"),
                prepositional: ("geróye", "geróyakh")
            )
        )
        
        XCTAssert(
            word: "scenárij",
            forms: SubstantiveForms(
                nominative: ("scenárij", "scenárii"),
                genitive: ("scenáriya", "scenáriyev"),
                dative: ("scenáriyu", "scenáriyam"),
                accusative: ("scenárij", "scenárii"),
                instrumental: ("scenáriyem", "scenáriyami"),
                prepositional: ("scenárii", "scenáriyakh")
            )
        )
        
        XCTAssert(
            word: "vikárij",
            forms: SubstantiveForms(
                nominative: ("vikárij", "vikárii"),
                genitive: ("vikáriya", "vikáriyev"),
                dative: ("vikáriyu", "vikáriyam"),
                accusative: ("vikáriya", "vikáriyev"),
                instrumental: ("vikáriyem", "vikáriyami"),
                prepositional: ("vikárii", "vikáriyakh")
            )
        )
    }
}
