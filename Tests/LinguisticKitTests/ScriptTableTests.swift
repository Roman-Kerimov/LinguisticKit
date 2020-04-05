//
//  ScriptTableTests.swift
//  
//
//  Created by Roman Kerimov on 2020-04-05.
//

import XCTest
@testable import LinguisticKit

class ScriptTableTests: XCTestCase {
    func testScriptTableByIdentifier() {
        XCTAssertEqual(ScriptTable.by(identifier: "ru"), .ru)
        XCTAssertNotEqual(ScriptTable.by(identifier: "az"), .ru)
    }
}
