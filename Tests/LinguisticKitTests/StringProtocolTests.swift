//
//  StringProtocolTests.swift
//  LinguisticKitTests
//
//  Created by Roman Kerimov on 2019-03-20.
//

import XCTest
@testable import LinguisticKit

class StringProtocolTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testEscaping() {
        
        let escapeSequence = "`"
        
        XCTAssertEqual(
            "`Y‐xhromosoma".translating(from: .Latn, to: .Cyrl, withTable: .ru, withEscapeSequence: escapeSequence),
            "Y‐хромосома"
        )
        
        XCTAssertEqual(
            "``abc `xyz ` opr `` ".translating(from: .Latn, to: .Cyrl, withTable: .ru, withEscapeSequence: escapeSequence),
            "`абц xyz ` опр ` "
        )
    }
    
    func testTranslateByTargetScriptCode() {
        
        XCTAssertEqual("stroka ru".translationByTargetScriptCode()?.translatedString, "строка")
        XCTAssertEqual("stroka\nstroka ru".translationByTargetScriptCode()?.translatedString, "строка")
        XCTAssertEqual("stroka\nstroka\nru".translationByTargetScriptCode()?.translatedString, "строка\nстрока")
        XCTAssertEqual("stroka\nstroka ru".translationByTargetScriptCode()?.sourceString, "stroka ru")
        XCTAssertEqual("STROKA ru".translationByTargetScriptCode()?.translatedString, "СТРОКА")
        XCTAssertNil("stroka".translationByTargetScriptCode())
        
    }
}
