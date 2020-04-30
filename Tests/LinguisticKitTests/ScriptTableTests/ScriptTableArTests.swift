//
//  ScriptTableArTests.swift
//  
//
//  Created by Roman Kerimov on 2020-04-29.
//

import XCTest
@testable import LinguisticKit

class ScriptTableArTests: XCTestCase {

    func XCTAssertArScriptTable(_ testCase: [Script: String], file: StaticString = #file, line: UInt = #line) {
        XCTAssert(scriptTable: .ar, testCase: testCase, file: file, line: line)
    }
    
    func testArScriptTable() {
        XCTAssertTrue(ScriptTable.ar.scripts.contains(.Arab))
        
        XCTAssertArScriptTable([
            .Arab: "لنم",
            .Latn: "lnm",
        ])
    }
}
