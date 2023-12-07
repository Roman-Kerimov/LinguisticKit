//
//  testSubstantiveMasculineB.swift
//  
//
//  Created by Roman Kerimov on 7/12/23.
//

import Foundation

extension WordTests {
    func testSubstantiveMasculineB() {
        XCTAssert(
            word: "topór",
            forms: SubstantiveForms(
                nominative: ("topór", "toporyí"),
                genitive: ("toporá", "toporóv"),
                dative: ("toporú", "toporám"),
                accusative: ("topór", "toporyí"),
                instrumental: ("toporóm", "toporámi"),
                prepositional: ("toporé", "toporákh")
            )
        )
        
        XCTAssert(
            word: "kochán",
            forms: SubstantiveForms(
                nominative: ("kochán", "kochanyí"),
                genitive: ("kochaná", "kochanóv"),
                dative: ("kochanú", "kochanám"),
                accusative: ("kochán", "kochanyí"),
                instrumental: ("kochanóm", "kochanámi"),
                prepositional: ("kochané", "kochanákh")
            )
        )
        
        XCTAssert(
            word: "begún",
            forms: SubstantiveForms(
                nominative: ("begún", "begunyí"),
                genitive: ("beguná", "begunóv"),
                dative: ("begunú", "begunám"),
                accusative: ("beguná", "begunóv"),
                instrumental: ("begunóm", "begunámi"),
                prepositional: ("beguné", "begunákh")
            )
        )
        
        XCTAssert(
            word: "slovárj",
            forms: SubstantiveForms(
                nominative: ("slovárj", "slovarí"),
                genitive: ("slovaryá", "slovaréj"),
                dative: ("slovaryú", "slovaryám"),
                accusative: ("slovárj", "slovarí"),
                instrumental: ("slovaryom", "slovaryámi"),
                prepositional: ("slovaré", "slovaryákh")
            )
        )
        
        XCTAssert(
            word: "karásj",
            forms: SubstantiveForms(
                nominative: ("karásj", "karasí"),
                genitive: ("karasyá", "karaséj"),
                dative: ("karasyú", "karasyám"),
                accusative: ("karásj", "karasí"),
                instrumental: ("karasyom", "karasyámi"),
                prepositional: ("karasé", "karasyákh")
            )
        )
        
        XCTAssert(
            word: "piróg",
            forms: SubstantiveForms(
                nominative: ("piróg", "pirogí"),
                genitive: ("pirogá", "pirogóv"),
                dative: ("pirogú", "pirogám"),
                accusative: ("piróg", "pirogí"),
                instrumental: ("pirogóm", "pirogámi"),
                prepositional: ("pirogé", "pirogákh")
            )
        )
        
        XCTAssert(
            word: "ryibák",
            forms: SubstantiveForms(
                nominative: ("ryibák", "ryibakí"),
                genitive: ("ryibaká", "ryibakóv"),
                dative: ("ryibakú", "ryibakám"),
                accusative: ("ryibaká", "ryibakóv"),
                instrumental: ("ryibakóm", "ryibakámi"),
                prepositional: ("ryibaké", "ryibakákh")
            )
        )
        
        XCTAssert(
            word: "kazák",
            forms: SubstantiveForms(
                nominative: ("kazák", "kazakí"),
                genitive: ("kazaká", "kazakóv"),
                dative: ("kazakú", "kazakám"),
                accusative: ("kazaká", "kazakóv"),
                instrumental: ("kazakóm", "kazakámi"),
                prepositional: ("kazaké", "kazakákh")
            )
        )
        
        XCTAssert(
            word: "nozh",
            forms: SubstantiveForms(
                nominative: ("nozh", "nozhí"),
                genitive: ("nozhá", "nozhéj"),
                dative: ("nozhú", "nozhám"),
                accusative: ("nozh", "nozhí"),
                instrumental: ("nozhóm", "nozhámi"),
                prepositional: ("nozhé", "nozhákh")
            )
        )
        
        XCTAssert(
            word: "bogách",
            forms: SubstantiveForms(
                nominative: ("bogách", "bogachí"),
                genitive: ("bogachá", "bogachéj"),
                dative: ("bogachú", "bogachám"),
                accusative: ("bogachá", "bogachéj"),
                instrumental: ("bogachóm", "bogachámi"),
                prepositional: ("bogaché", "bogachákh")
            )
        )
        
        XCTAssert(
            word: "kostréc",
            forms: SubstantiveForms(
                nominative: ("kostréc", "kostrecyí"),
                genitive: ("kostrecá", "kostrecóv"),
                dative: ("kostrecú", "kostrecám"),
                accusative: ("kostréc", "kostrecyí"),
                instrumental: ("kostrecóm", "kostrecámi"),
                prepositional: ("kostrecé", "kostrecákh")
            )
        )
        
        XCTAssert(
            word: "kuznéc",
            forms: SubstantiveForms(
                nominative: ("kuznéc", "kuznecyí"),
                genitive: ("kuznecá", "kuznecóv"),
                dative: ("kuznecú", "kuznecám"),
                accusative: ("kuznéc", "kuznecyí"),
                instrumental: ("kuznecóm", "kuznecámi"),
                prepositional: ("kuznecé", "kuznecákh")
            )
        )
        
        XCTAssert(
            word: "lisháj",
            forms: SubstantiveForms(
                nominative: ("lisháj", "lishaí"),
                genitive: ("lishayá", "lishayov"),
                dative: ("lishayú", "lishayám"),
                accusative: ("lisháj", "lishaí"),
                instrumental: ("lishayom", "lishayámi"),
                prepositional: ("lishayé", "lishayákh")
            )
        )
        
        XCTAssert(
            word: "kholúj",
            forms: SubstantiveForms(
                nominative: ("kholúj", "kholuí"),
                genitive: ("kholuyá", "kholuyov"),
                dative: ("kholuyú", "kholuyám"),
                accusative: ("kholúj", "kholuí"),
                instrumental: ("kholuyom", "kholuyámi"),
                prepositional: ("kholuyé", "kholuyákh")
            )
        )
        
        XCTAssert(
            word: "kij",
            forms: SubstantiveForms(
                nominative: ("kij", "kií"),
                genitive: ("kiyá", "kiyov"),
                dative: ("kiyú", "kiyám"),
                accusative: ("kij", "kií"),
                instrumental: ("kiyom", "kiyámi"),
                prepositional: ("kiyé", "kiyákh")
            )
        )
        
        XCTAssert(
            word: "putj",
            forms: SubstantiveForms(
                nominative: ("putj", "putí"),
                genitive: ("putí", "putéj"),
                dative: ("putí", "putyám"),
                accusative: ("putj", "putí"),
                instrumental: ("putyom", "putyámi"),
                prepositional: ("putí", "putyákh")
            )
        )
    }
}
