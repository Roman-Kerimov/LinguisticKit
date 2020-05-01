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
    
    func testAlef() {
        XCTAssertArScriptTable([
            .Arab: "زار",
            .Latn: "zar",
        ])
        
        XCTAssertArScriptTable([
            .Arab: "داد",
            .Latn: "dad",
        ])
        
        XCTAssertArScriptTable([
            .Arab: "راي",
            .Latn: "ray",
        ])
    }
    
    func testWaw() {
        XCTAssertArScriptTable([
            .Arab: "رو",
            .Latn: "rw",
        ])
        
        XCTAssertArScriptTable([
            .Arab: "رود",
            .Latn: "rwd",
        ])
        
        XCTAssertArScriptTable([
            .Arab: "وو",
            .Latn: "ww",
        ])
    }
    
    func testYeh() {
        XCTAssertArScriptTable([
            .Arab: "زي",
            .Latn: "zy",
        ])
    }
}
