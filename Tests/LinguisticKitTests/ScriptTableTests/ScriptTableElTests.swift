//
//  ScriptTableElTests.swift
//  
//
//  Created by Roman Kerimov on 2020-08-26.
//

import XCTest
@testable import LinguisticKit

class ScriptTableElTests: XCTestCase {

    func XCTAssertElScriptTable(_ testCase: [Script: String], file: StaticString = #filePath, line: UInt = #line) {
        XCTAssert(scriptTable: .el, testCase: testCase, file: file, line: line)
    }
    
    func testElScriptTable() {
        XCTAssertElScriptTable([
            .Grek: "Ελληνικό αλφάβητο",
            .Latn: "Ellihnikó alfávihto",
        ])
        
        XCTAssertElScriptTable([
            .Grek: "Ξεσκεπάζω την ψυχοφθόρα σας βδελυγμία.",
            .Latn: "Xeskepázoh tihn psychofthóra sas vdelygmía."
        ])
    }
    
    func testPsi() {
        XCTAssertElScriptTable([
            .Grek: "ψ",
            .Latn: "ps",
        ])
        
        XCTAssertElScriptTable([
            .Grek: "κλιπς",
            .Latn: "klip's",
        ])
        
        XCTAssertElScriptTable([
            .Grek: "Χάμπσαϊρ",
            .Latn: "Chámp'saïr",
        ])
    }
    
    func testSigma() {
        XCTAssertElScriptTable([
            .Grek: "σίγμα",
            .Latn: "sígma",
        ])
        
        XCTAssertElScriptTable([
            .Grek: "ηχηρές",
            .Latn: "ihchihrés",
        ])
        
        XCTAssertElScriptTable([
            .Grek: "σ",
            .Latn: "s",
        ])
    }
    
    func testDiacritic() {
        XCTAssertElScriptTable([
            .Grek: "ώ",
            .Latn: "óh",
        ])
        
        XCTAssertElScriptTable([
            .Grek: "ὼ",
            .Latn: "òh",
        ])
    }
}
