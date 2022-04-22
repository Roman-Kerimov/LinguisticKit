//
//  ScriptTableSrTests.swift
//  LinguisticKitTests
//
//  Created by Roman Kerimov on 2020-04-17.
//

import XCTest
@testable import LinguisticKit

class ScriptTableSrTests: XCTestCase {

    func XCTAssertSrScriptTable(_ testCase: [Script: String], file: StaticString = #filePath, line: UInt = #line) {
        XCTAssert(scriptTable: .sr, testCase: testCase, file: file, line: line)
    }
    
    func testSrScriptTable() {
        XCTAssertSrScriptTable([
            .Cyrl: "Штеф, бацих сломљен дечји зврк у џеп гђе Жуњић.",
            .Latn: "Štef, bacih slomǉen dečji zvrk u ǆep gđe Žuǌić.",
        ])
        
        XCTAssertSrScriptTable([
            .Cyrl: "Џаред",
            .Latn: "ǅared",
        ])
        
        XCTAssertSrScriptTable([
            .Cyrl: "ЏАРЕД",
            .Latn: "ǄARED",
        ])
    }

}
