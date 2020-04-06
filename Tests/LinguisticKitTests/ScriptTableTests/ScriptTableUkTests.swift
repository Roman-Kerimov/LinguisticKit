//
//  ScriptTableUkTests.swift
//  
//
//  Created by Roman Kerimov on 2020-04-06.
//

import XCTest
@testable import LinguisticKit

class ScriptTableUkTests: XCTestCase {

    func XCTAssertUkScriptTable(_ testCase: [Script: String], file: StaticString = #file, line: UInt = #line) {
        XCTAssert(scriptTable: .uk, testCase: testCase, file: file, line: line)
    }
    
    func testUkScriptTable() {
        XCTAssertUkScriptTable([
            .Cyrl: "Гей, хлопці, не вспію — на ґанку ваша файна їжа знищується бурундучком.",
            .Latn: "Gej, xhlopci, ne vspiju — na ghanku vasha fajna jizha znyshhujetjsja burunduchkom.",
        ])
        
        XCTAssertUkScriptTable([
            .Cyrl: "безйодовий",
            .Latn: "bez`jhodovyj",
        ])
        
        XCTAssertUkScriptTable([
            .Cyrl: "йогурт",
            .Latn: "jhogurt",
        ])
        
        XCTAssertUkScriptTable([
            .Cyrl: "трьоххлорістий",
            .Latn: "trjoxhxhloristyj",
        ])
        
        XCTAssertUkScriptTable([
            .Cyrl: "хліб",
            .Latn: "xhlib",
        ])
        
        XCTAssertUkScriptTable([
            .Cyrl: "дельартовскій",
            .Latn: "deljhartovskij"
        ])
        
        XCTAssertUkScriptTable([
            .Cyrl: "пʼять",
            .Latn: "pʼjatj"
        ])
    }

}
