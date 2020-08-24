//
//  ScriptTableJaTests.swift
//  
//
//  Created by Roman Kerimov on 2020-07-20.
//

import XCTest
@testable import LinguisticKit

class ScriptTableJaTests: XCTestCase {

    func XCTAssertJaScriptTable(_ testCase: [Script: String], file: StaticString = #filePath, line: UInt = #line) {
        XCTAssert(scriptTable: .ja, testCase: testCase, file: file, line: line)
    }
    
    func testJaScriptTable() {
        
        XCTAssertJaScriptTable([
            .Hira: "おちゃ",
            .Latn: "otya",
        ])
        
        XCTAssertJaScriptTable([
            .Hira: "ちじ",
            .Latn: "tizi",
        ])
        
        XCTAssertJaScriptTable([
            .Hira: "ちぢむ",
            .Latn: "tidimu",
        ])
        
        XCTAssertJaScriptTable([
            .Kana: "アイスクリーム",
            .Latn: "aisukurîmu",
        ])
    }
    
    func testSokuon() {
        XCTAssertJaScriptTable([
            .Hira: "なっとう",
            .Latn: "nattou",
        ])
        
        XCTAssertJaScriptTable([
            .Hira: "あっ！",
            .Latn: "at!",
        ])
        
        XCTAssertJaScriptTable([
            .Hira: "っあ",
            .Latn: "t'a",
        ])
    }
    
    func testN() {
        XCTAssertJaScriptTable([
            .Hira: "んあ",
            .Latn: "n'a",
        ])
        
        XCTAssertJaScriptTable([
            .Hira: "んい",
            .Latn: "n'i",
        ])
        
        XCTAssertJaScriptTable([
            .Hira: "んう",
            .Latn: "n'u",
        ])
        
        XCTAssertJaScriptTable([
            .Hira: "んえ",
            .Latn: "n'e",
        ])
        
        XCTAssertJaScriptTable([
            .Hira: "んお",
            .Latn: "n'o",
        ])
        
        XCTAssertJaScriptTable([
            .Hira: "んや",
            .Latn: "n'ya",
        ])
        
        XCTAssertJaScriptTable([
            .Hira: "ごめんなさい",
            .Latn: "gomen'nasai",
        ])
    }
    
    func testPunctuation() {
        let jaPunctuation = "｛｝（）［］、。・「」『』　〜：！？"
        XCTAssertJaScriptTable([
            .Hira: jaPunctuation,
            .Kana: jaPunctuation,
            .Latn: "{}()[],.·‹›«» ~:!?",
        ])
    }
}
