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
    
    func testSubstantiveMasculineAsterisk() {
        // MARK: 1*a
        
        XCTAssert(
            word: "svyokor",
            forms: SubstantiveForms(
                nominative: ("svyokor", "svyokryi"),
                genitive: ("svyokra", "svyokrov"),
                dative: ("svyokru", "svyokram"),
                accusative: ("svyokra", "svyokrov"),
                instrumental: ("svyokrom", "svyokrami"),
                prepositional: ("svyokre", "svyokrakh")
            )
        )
        
        XCTAssert(
            word: "búben",
            forms: SubstantiveForms(
                nominative: ("búben", "búbnyi"),
                genitive: ("búbna", "búbnov"),
                dative: ("búbnu", "búbnam"),
                accusative: ("búben", "búbnyi"),
                instrumental: ("búbnom", "búbnami"),
                prepositional: ("búbne", "búbnakh")
            )
        )
        
        XCTAssert(
            word: "véter",
            forms: SubstantiveForms(
                nominative: ("véter", "vétryi"),
                genitive: ("vétra", "vétrov"),
                dative: ("vétru", "vétram"),
                accusative: ("véter", "vétryi"),
                instrumental: ("vétrom", "vétrami"),
                prepositional: ("vétre", "vétrakh"),
                locative: ("vetrú", "vetrákh")
            )
        )
        
        XCTAssert(
            word: "zayom",
            forms: SubstantiveForms(
                nominative: ("zayom", "zájmyi"),
                genitive: ("zájma", "zájmov"),
                dative: ("zájmu", "zájmam"),
                accusative: ("zayom", "zájmyi"),
                instrumental: ("zájmom", "zájmami"),
                prepositional: ("zájme", "zájmakh")
            )
        )
        
        // MARK: 1*b
        
        XCTAssert(
            word: "bugór",
            forms: SubstantiveForms(
                nominative: ("bugór", "bugryí"),
                genitive: ("bugrá", "bugróv"),
                dative: ("bugrú", "bugrám"),
                accusative: ("bugór", "bugryí"),
                instrumental: ("bugróm", "bugrámi"),
                prepositional: ("bugré", "bugrákh")
            )
        )
        
        XCTAssert(
            word: "úgol",
            forms: SubstantiveForms(
                nominative: ("úgol", "uglyí"),
                genitive: ("uglá", "uglóv"),
                dative: ("uglú", "uglám"),
                accusative: ("úgol", "uglyí"),
                instrumental: ("uglóm", "uglámi"),
                prepositional: ("uglé", "uglákh"),
                locative: ("uglú", "uglákh")
            )
        )
        
        XCTAssert(
            word: "kotyol",
            forms: SubstantiveForms(
                nominative: ("kotyol", "kotlyí"),
                genitive: ("kotlá", "kotlóv"),
                dative: ("kotlú", "kotlám"),
                accusative: ("kotyol", "kotlyí"),
                instrumental: ("kotlóm", "kotlámi"),
                prepositional: ("kotlé", "kotlákh")
            )
        )
        
        XCTAssert(
            word: "khrebét",
            forms: SubstantiveForms(
                nominative: ("khrebét", "khrebtyí"),
                genitive: ("khrebtá", "khrebtóv"),
                dative: ("khrebtú", "khrebtám"),
                accusative: ("khrebét", "khrebtyí"),
                instrumental: ("krebtóm", "khrebtámi"),
                prepositional: ("khrebté", "khrebtákh")
            )
        )
        
        XCTAssert(
            word: "úzel",
            forms: SubstantiveForms(
                nominative: ("úzel", "uzlyí"),
                genitive: ("uzlá", "uzlóv"),
                dative: ("uzlú", "uzlám"),
                accusative: ("úzel", "uzlyí"),
                instrumental: ("uzlóm", "uzlámi"),
                prepositional: ("uzlé", "uzlákh")
            )
        )
        
        XCTAssert(
            word: "kochán",
            forms: SubstantiveForms(
                nominative: ("kochán", "kochnyí"),
                genitive: ("kochná", "kochnóv"),
                dative: ("kochnú", "kochnám"),
                accusative: ("kochán", "kochnyí"),
                instrumental: ("kochnóm", "kochnámi"),
                prepositional: ("kochné", "kochnákh")
            )
        )
        
        XCTAssert(
            word: "lyod",
            forms: SubstantiveForms(
                nominative: ("lyod", "ljdyi"),
                genitive: ("ljda", "ljdov"),
                dative: ("ljdu", "ljdam"),
                accusative: ("lyod", "ljdyi"),
                instrumental: ("ljdom", "ljdami"),
                prepositional: ("ljde", "ljdakh")
            )
        )
        
        XCTAssert(
            word: "lev",
            forms: SubstantiveForms(
                nominative: ("lev", "ljvyi"),
                genitive: ("ljva", "ljvov"),
                dative: ("ljvu", "ljvam"),
                accusative: ("ljva", "ljvov"),
                instrumental: ("ljvom", "ljvami"),
                prepositional: ("ljve", "ljvakh")
            )
        )
        
        // MARK: 1*c (1)
        
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
        
        // MARK: 1*e
        
        XCTAssert(
            word: "véter",
            forms: SubstantiveForms(
                nominative: ("véter", "vétryi"),
                genitive: ("vétra", "vetróv"),
                dative: ("vétru", "vetrám"),
                accusative: ("véter", "vétryi"),
                instrumental: ("vétrom", "vetrámi"),
                prepositional: ("vétre", "vetrákh"),
                locative: ("vetrú", "vetrákh")
            )
        )
        
        // MARK: 2*a
        
        XCTAssert(
            word: "dyogotj",
            forms: SubstantiveForms(
                nominative: ("dyogotj", "dyogti"),
                genitive: ("dyogtya", "dyogtej"),
                dative: ("dyogtyu", "dyogtyam"),
                accusative: ("dyogotj", "dyogti"),
                instrumental: ("dyogtem", "dyogtyami"),
                prepositional: ("dyogte", "dyogtyakh")
            )
        )
        
        XCTAssert(
            word: "lívenj",
            forms: SubstantiveForms(
                nominative: ("lívenj", "lívni"),
                genitive: ("lívnya", "lívnej"),
                dative: ("lívnyu", "lívnyam"),
                accusative: ("lívenj", "lívni"),
                instrumental: ("lívnem", "lívnyami"),
                prepositional: ("lívne", "lívnyakh")
            )
        )
        
        XCTAssert(
            word: "úvalenj",
            forms: SubstantiveForms(
                nominative: ("úvalenj", "úvaljni"),
                genitive: ("úvaljnya", "úvaljnej"),
                dative: ("úvaljnyu", "úvaljnyam"),
                accusative: ("úvaljnya", "úvaljnej"),
                instrumental: ("úvaljnem", "úvaljnyami"),
                prepositional: ("úvaljne", "úvaljnyakh")
            )
        )
        
        // MARK: 2*b
        
        XCTAssert(
            word: "ogónj",
            forms: SubstantiveForms(
                nominative: ("ogónj", "ogní"),
                genitive: ("ognyá", "ognéj"),
                dative: ("ognyú", "ognyám"),
                accusative: ("ogónj", "ogní"),
                instrumental: ("ognyom", "ognyámi"),
                prepositional: ("ogné", "ognyákh")
            )
        )
        
        XCTAssert(
            word: "lomótj",
            forms: SubstantiveForms(
                nominative: ("lomótj", "lomtí"),
                genitive: ("lomtyá", "lomtéj"),
                dative: ("lomtyú", "lomtyám"),
                accusative: ("lomótj", "lomtí"),
                instrumental: ("lomtyom", "lomtyámi"),
                prepositional: ("lomté", "lomnyákh")
            )
        )
        
        XCTAssert(
            word: "úgorj",
            forms: SubstantiveForms(
                nominative: ("úgorj", "ugrí"),
                genitive: ("ugryá", "ugréj"),
                dative: ("ugryú", "ugryám"),
                accusative: ("úgorj", "ugrí"),
                instrumental: ("ugryom", "ugryámi"),
                prepositional: ("ugré", "ugryákh")
            )
        )
        
        XCTAssert(
            word: "úgorj",
            forms: SubstantiveForms(
                nominative: ("úgorj", "ugrí"),
                genitive: ("ugryá", "ugréj"),
                dative: ("ugryú", "ugryám"),
                accusative: ("ugryá", "ugréj"),
                instrumental: ("ugryom", "ugryámi"),
                prepositional: ("ugré", "ugryákh")
            )
        )
        
        XCTAssert(
            word: "reménj",
            forms: SubstantiveForms(
                nominative: ("reménj", "remní"),
                genitive: ("remnyá", "remnéj"),
                dative: ("remnyú", "remnyám"),
                accusative: ("reménj", "remní"),
                instrumental: ("remnyom", "remnyámi"),
                prepositional: ("remné", "remnyákh")
            )
        )
        
        // MARK: 2*e
        
        XCTAssert(
            word: "lómotj",
            forms: SubstantiveForms(
                nominative: ("lómotj", "lómti"),
                genitive: ("lómtya", "lomtéj"),
                dative: ("lómtyu", "lomtyám"),
                accusative: ("lómotj", "lómti"),
                instrumental: ("lómtem", "lomtyámi"),
                prepositional: ("lómte", "lomtyákh")
            )
        )
        
        XCTAssert(
            word: "nógotj",
            forms: SubstantiveForms(
                nominative: ("nógotj", "nógti"),
                genitive: ("nógtya", "nogtéj"),
                dative: ("nótyu", "nogtyám"),
                accusative: ("nógotj", "nógti"),
                instrumental: ("nógtem", "nogtyámi"),
                prepositional: ("nógte", "nogtyákh")
            )
        )
        
        XCTAssert(
            word: "kórenj",
            forms: SubstantiveForms(
                nominative: ("kórenj", "kórni"),
                genitive: ("kórnya", "kornéj"),
                dative: ("kórnyu", "kornyám"),
                accusative: ("kórenj", "kórni"),
                instrumental: ("kórnem", "kornyámi"),
                prepositional: ("kórne", "kornyákh")
            )
        )
        
        // MARK: 3*a
        
        XCTAssert(
            word: "kúbok",
            forms: SubstantiveForms(
                nominative: ("kúbok", "kúbki"),
                genitive: ("kúbka", "kúbkov"),
                dative: ("kúbku", "kúbkam"),
                accusative: ("kúbok", "kúbki"),
                instrumental: ("kúbkom", "kúbkami"),
                prepositional: ("kúbke", "kúbkakh")
            )
        )
        
        XCTAssert(
            word: "kusóchek",
            forms: SubstantiveForms(
                nominative: ("kusóchek", "kusóchki"),
                genitive: ("kusóchka", "kusóchkov"),
                dative: ("kusóchku", "kusóchkam"),
                accusative: ("kusóchek", "kusóchki"),
                instrumental: ("kusóchkom", "kusóchkami"),
                prepositional: ("kusóchke", "kusóchkakh")
            )
        )
        
        XCTAssert(
            word: "pereshéyek",
            forms: SubstantiveForms(
                nominative: ("pereshéyek", "pereshéjki"),
                genitive: ("pereshéjka", "pereshéjkov"),
                dative: ("pereshéjku", "pereshéjkam"),
                accusative: ("pereshéyek", "pereshéjki"),
                instrumental: ("pereshéjkom", "pereshéjkami"),
                prepositional: ("pereshéjke", "pereshéjkakh")
            )
        )
        
        // MARK: 3*b
        
        XCTAssert(
            word: "kusók",
            forms: SubstantiveForms(
                nominative: ("kusók", "kuskí"),
                genitive: ("kuská", "kuskóv"),
                dative: ("kuskú", "kuskám"),
                accusative: ("kusók", "kuskí"),
                instrumental: ("kuskóm", "kuskámi"),
                prepositional: ("kuské", "kuskákh")
            )
        )
        
        XCTAssert(
            word: "khoryok",
            forms: SubstantiveForms(
                nominative: ("koryok", "khorjkí"),
                genitive: ("khorjká", "korjkóv"),
                dative: ("khorjkú", "khorjkám"),
                accusative: ("khorjká", "khorjkóv"),
                instrumental: ("khorjkóm", "khorjkámi"),
                prepositional: ("khorjké", "khorjkákh")
            )
        )
        
        XCTAssert(
            word: "payok",
            forms: SubstantiveForms(
                nominative: ("payok", "pajkí"),
                genitive: ("pajká", "pajkóv"),
                dative: ("pajkú", "pajkám"),
                accusative: ("payok", "pajkí"),
                instrumental: ("pajkóm", "pajkámi"),
                prepositional: ("pajké", "pajkákh")
            )
        )
        
        // MARK: 5*a
        
        XCTAssert(
            word: "némec",
            forms: SubstantiveForms(
                nominative: ("némec", "némcyi"),
                genitive: ("némca", "némcev"),
                dative: ("némcu", "némcam"),
                accusative: ("némca", "némcev"),
                instrumental: ("némcem", "némcami"),
                prepositional: ("némce", "némcakh")
            )
        )
        
        XCTAssert(
            word: "pálec",
            forms: SubstantiveForms(
                nominative: ("pálec", "páljcyi"),
                genitive: ("páljca", "páljcev"),
                dative: ("páljcu", "páljcam"),
                accusative: ("pálec", "páljcyi"),
                instrumental: ("páljcem", "páljcami"),
                prepositional: ("páljce", "páljcakh")
            )
        )
        
        XCTAssert(
            word: "kitáyec",
            forms: SubstantiveForms(
                nominative: ("kitáyec", "kitájcyi"),
                genitive: ("kitájca", "kitájcev"),
                dative: ("kitájcu", "kitájcam"),
                accusative: ("kitájca", "kitájcev"),
                instrumental: ("kitájcem", "kitájcami"),
                prepositional: ("kitájce", "kitájcakh")
            )
        )
        
        XCTAssert(
            word: "záyac",
            forms: SubstantiveForms(
                nominative: ("záyac", "zájcyi"),
                genitive: ("zájca", "zájcev"),
                dative: ("zájcu", "zájcam"),
                accusative: ("zájca", "zájcev"),
                instrumental: ("zájcem", "zájcami"),
                prepositional: ("zájce", "zájcakh")
            )
        )
        
        // MARK: 5*b
        
        XCTAssert(
            word: "konéc",
            forms: SubstantiveForms(
                nominative: ("konéc", "koncyí"),
                genitive: ("koncá", "koncóv"),
                dative: ("koncú", "koncám"),
                accusative: ("konéc", "koncyí"),
                instrumental: ("koncóm", "koncámi"),
                prepositional: ("koncé", "koncákh")
            )
        )
        
        XCTAssert(
            word: "zhiléc",
            forms: SubstantiveForms(
                nominative: ("zhiléc", "zhiljcyí"),
                genitive: ("zhiljcá", "zhiljcóv"),
                dative: ("zhiljcú", "zhiljcám"),
                accusative: ("zhiljcá", "zhiljcóv"),
                instrumental: ("zhiljcóm", "zhiljcámi"),
                prepositional: ("zhiljcé", "zhiljcákh")
            )
        )
        
        XCTAssert(
            word: "boyéc",
            forms: SubstantiveForms(
                nominative: ("boyéc", "bojcyí"),
                genitive: ("bojcá", "bojcóv"),
                dative: ("bojcú", "bojcám"),
                accusative: ("bojcá", "bojcóv"),
                instrumental: ("bojcóm", "bojcámi"),
                prepositional: ("bojcé", "bojcákh")
            )
        )
        
        // MARK: 6*a
        
        XCTAssert(
            word: "úlej",
            forms: SubstantiveForms(
                nominative: ("úlej", "úlji"),
                genitive: ("úljya", "úljyev"),
                dative: ("úljyu", "úljyam"),
                accusative: ("úlej", "úlji"),
                instrumental: ("úljyem", "úljyami"),
                prepositional: ("úljye", "úljyakh")
            )
        )
        
        // MARK: 6*b
        
        XCTAssert(
            word: "ruchéj",
            forms: SubstantiveForms(
                nominative: ("ruchéj", "ruchjí"),
                genitive: ("ruchjyá", "ruchjyov"),
                dative: ("ruchjyú", "ruchjyám"),
                accusative: ("ruhchéj", "ruchjí"),
                instrumental: ("ruchjyom", "ruhjyámi"),
                prepositional: ("ruchjyé", "ruchjyákh")
            )
        )
        
        XCTAssert(
            word: "muravéj",
            forms: SubstantiveForms(
                nominative: ("muravéj", "muravjí"),
                genitive: ("muravjyá", "muravjyov"),
                dative: ("muravjyú", "muravjyám"),
                accusative: ("muravjyá", "muravjyov"),
                instrumental: ("muravjyom", "muravjyámi"),
                prepositional: ("muravjyé", "muravjyákh")
            )
        )
    }
}
