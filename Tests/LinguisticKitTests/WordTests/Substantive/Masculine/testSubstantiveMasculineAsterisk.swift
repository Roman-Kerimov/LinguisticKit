//
//  testSubstantiveMasculineAsterisk.swift
//  
//
//  Created by Roman Kerimov on 7/12/23.
//

import Foundation

extension WordTests {
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
            word: "prómyisel",
            forms: SubstantiveForms(
                nominative: ("prómyisel", "prómyislyi"),
                genitive: ("prómyisla", "prómyislov"),
                dative: ("prómyislu", "prómyislam"),
                accusative: ("prómyisel", "prómyislyi"),
                instrumental: ("prómyislom", "prómyislami"),
                prepositional: ("prómyisle", "prómyislakh")
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
        
        XCTAssert(
            word: "sjhenók",
            forms: SubstantiveForms(
                nominative: ("sjhenók", "sjhenkí"),
                genitive: ("sjhenká", "sjhenkóv"),
                dative: ("sjhenkú", "sjhenkám"),
                accusative: ("sjhenká", "sjhenkóv"),
                instrumental: ("sjhenkóm", "sjhenkámi"),
                prepositional: ("sjhenké", "sjhenkákh")
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
