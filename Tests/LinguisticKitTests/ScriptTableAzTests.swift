//
//  ScriptTableAzTests.swift
//  LinguisticKitTests
//
//  Created by Roman Kerimov on 2019-04-04.
//

import XCTest
@testable import LinguisticKit

class ScriptTableAzTests: XCTestCase {

    func XCTAssertAzScriptTable(_ testCase: ScriptTable.RAWScriptTableCell, file: StaticString = #file, line: UInt = #line) {
        XCTAssert(scriptTable: .az, testCase: testCase, file: file, line: line)
    }
    
    func testAzScriptTable() {
        XCTAssertAzScriptTable(
            [.Latn: "Zəfər, jaketini də, papağını da götür, bu axşam hava çox soyuq olacaq.",
             .Cyrl: "Зәфәр, жакетини дә, папағыны да ҝөтүр, бу ахшам һава чох сојуг олаҹаг."]
        )
    }

}
