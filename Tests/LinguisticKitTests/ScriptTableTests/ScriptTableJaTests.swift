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
    
    func testAzScriptTable() {
        
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

}
