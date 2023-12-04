//
//  WordTests.swift
//
//
//  Created by Roman Kerimov on 30/11/23.
//

import XCTest
@testable import LinguisticKit

final class WordTests: XCTestCase {
    func testSubstantiveMasculineA() {
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