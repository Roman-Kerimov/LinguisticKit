//
//  File.swift
//  
//
//  Created by Roman Kerimov on 2020-09-02.
//

import XCTest
@testable import LinguisticKit

class ScriptTableBeTests: XCTestCase {
    
    func XCTAssertBeScriptTable(_ testCase: [Script: String], file: StaticString = #filePath, line: UInt = #line) {
        XCTAssert(scriptTable: .be, testCase: testCase, file: file, line: line)
    }
    
    func testBeScriptTable() {
        XCTAssertBeScriptTable([
            .Cyrl: "Беларускі алфавіт",
            .Latn: "Biełaruski ałfavit",
        ])
        
        XCTAssertBeScriptTable([
            .Cyrl: "У рудога вераб'я ў сховішчы пад фатэлем ляжаць нейкія гаючыя зёлкі",
            .Latn: "U rudoha vierabja ŭ schoviščy pad fatelem lažać niejkija hajučyja ziołki"
        ])
        
        XCTAssertBeScriptTable([
            .Cyrl: "ня",
            .Latn: "nia",
        ])
        
        XCTAssertBeScriptTable([
            .Cyrl: "нь",
            .Latn: "ń",
        ])
        
        XCTAssertBeScriptTable([
            .Cyrl: "нья",
            .Latn: "ńja",
        ])
    }
    
    func testL() {
        XCTAssertBeScriptTable([
            .Cyrl: "л ль",
            .Latn: "ł l",
        ])
        
        XCTAssertBeScriptTable([
            .Cyrl: "ла ля льа лья",
            .Latn: "ła la l'a lja",
        ])
        
        XCTAssertBeScriptTable([
            .Cyrl: "лэ ле льэ лье",
            .Latn: "łe le l'e lje",
        ])
        
        XCTAssertBeScriptTable([
            .Cyrl: "лы лі льы льі",
            .Latn: "ły li l'y l'i",
        ])
        
        XCTAssertBeScriptTable([
            .Cyrl: "ло лё льо льё",
            .Latn: "ło lo l'o ljo",
        ])
        
        XCTAssertBeScriptTable([
            .Cyrl: "лу лю льу лью",
            .Latn: "łu lu l'u lju",
        ])
    }
    
    func testAcute() {
        XCTAssertBeScriptTable([
            .Cyrl: "Белару́ская мо́ва",
            .Latn: "Biełarúskaja móva",
        ])
    }
}
