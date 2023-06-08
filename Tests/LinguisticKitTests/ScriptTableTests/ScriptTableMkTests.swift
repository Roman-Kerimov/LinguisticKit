//
//  ScriptTableMkTests.swift
//  LinguisticKitTests
//
//  Created by Roman Kerimov on 2020-04-17.
//

import XCTest
@testable import LinguisticKit

class ScriptTableMkTests: XCTestCase {
    
    func XCTAssertMkScriptTable(_ testCase: [Script: String], file: StaticString = #filePath, line: UInt = #line) {
        XCTAssert(scriptTable: .mk, testCase: testCase, file: file, line: line)
    }
    
    func testMkScriptTable() {
        XCTAssertMkScriptTable([
            .Cyrl: "Мојот дружељубив коњ со тих галоп фаќа брз џиновски глушец по туѓо ѕитче.",
            .Latn: "Mojot družeǉubiv koǌ so tih galop faḱa brz ǆinovski glušec po tuǵo ǳitče.",
        ])
    }
}
