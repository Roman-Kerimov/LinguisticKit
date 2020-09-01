//
//  ScriptTableGrTests.swift
//  
//
//  Created by Roman Kerimov on 2020-08-30.
//

import XCTest
@testable import LinguisticKit

class ScriptTableGrTests: XCTestCase {

    func XCTAssertGrScriptTable(_ testCase: [Script: String], file: StaticString = #filePath, line: UInt = #line) {
        XCTAssert(scriptTable: .gr, testCase: testCase, file: file, line: line)
    }
    
    func testGrScriptTable() {
        XCTAssertGrScriptTable([
            .Grek: "Ελληνικό αλφάβητο",
            .Latn: "Ellehnikó alphábehto",
        ])
        
        XCTAssertGrScriptTable([
            .Grek: "Ξεσκεπάζω την ψυχοφθόρα σας βδελυγμία.",
            .Latn: "Xeskepázoh tehn psychophthóra sas bdelygmía."
        ])
    }
}
