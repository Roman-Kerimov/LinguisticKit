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
            .Cyrl: "ля",
            .Latn: "la",
        ])
        
        XCTAssertBeScriptTable([
            .Cyrl: "нь",
            .Latn: "ń",
        ])
        
        XCTAssertBeScriptTable([
            .Cyrl: "ль",
            .Latn: "l",
        ])
        
        XCTAssertBeScriptTable([
            .Cyrl: "нья",
            .Latn: "ńja",
        ])
        
        XCTAssertBeScriptTable([
            .Cyrl: "лья",
            .Latn: "lja",
        ])
    }
}
