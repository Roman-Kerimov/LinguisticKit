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
            .Hira: "あっ!",
            .Latn: "at!",
        ])
        
        XCTAssertJaScriptTable([
            .Hira: "っあ",
            .Latn: "t'a",
        ])
    }
}
