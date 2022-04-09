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
            "`Y‐khromosoma".applyingTransform(from: .Latn, to: .Cyrl, withTable: .ru, withEscapeSequence: escapeSequence),
            "Y‐хромосома"
        )
        
        XCTAssertEqual(
            "``abc `xyz ` opr `` ".applyingTransform(from: .Latn, to: .Cyrl, withTable: .ru, withEscapeSequence: escapeSequence),
            "`абц xyz ` опр ` "
        )
    }
    
    func testApplyingTransform() {
        XCTAssertNil("".applyingTransform(from: .Latn, to: .Glag, withTable: .az))
        XCTAssertNil("".applyingTransform(from: .Glag, to: .Cyrl, withTable: .az, withEscapeSequence: "`"))
    }
    
    func testApplyingTransformPrecomposition() {
        XCTAssertEqual(
            "у́".applyingTransform(from: .Cyrl, to: .Latn, withTable: .ru)?.unicodeScalars.count,
            "ú".unicodeScalars.count
        )
    }
    
    func testApplyingTransformForPrecomposedString() {
        let precomposedString = "ё"
        XCTAssertEqual(
            precomposedString.applyingTransform(from: .Latn, to: .Cyrl, withTable: .ru)?.unicodeScalars.count,
            precomposedString.unicodeScalars.count
        )
    }
    
    func testApplyingTransformForDecomposedString() {
        let decomposedString = "ё"
        XCTAssertNotEqual(
            decomposedString.applyingTransform(from: .Latn, to: .Cyrl, withTable: .ru)?.unicodeScalars.count,
            decomposedString.unicodeScalars.count
        )
    }
    
    func testApplyingTransformByTargetScriptCode() {
        
        XCTAssertEqual("stroka ru".transformationByTargetScriptCode()?.targetString, "строка")
        XCTAssertEqual("stroka\nstroka ru".transformationByTargetScriptCode()?.targetString, "строка")
        XCTAssertEqual("stroka\nstroka\nru".transformationByTargetScriptCode()?.targetString, "строка\nстрока")
        XCTAssertEqual("stroka\nstroka ru".transformationByTargetScriptCode()?.sourceString, "stroka ru")
        XCTAssertEqual("STROKA ru".transformationByTargetScriptCode()?.targetString, "СТРОКА")
        XCTAssertEqual("á ru".transformationByTargetScriptCode()?.targetString, "а́")
        XCTAssertNil("stroka".transformationByTargetScriptCode())
        XCTAssertNil("ru".transformationByTargetScriptCode())
        XCTAssertNil("строка ru".transformationByTargetScriptCode())
        XCTAssertNil("\nru".transformationByTargetScriptCode())
        XCTAssertNil(" ru".transformationByTargetScriptCode())
    }
    
    func testApplyingTransformByTargetScriptCodeForWord() {
        XCTAssertEqual("slovo slovo ru ".transformationByTargetScriptCode()?.sourceString, "slovo ru ")
        XCTAssertEqual("slovo slovo ru ".transformationByTargetScriptCode()?.targetString, "слово")
    }
    
    func testApplyingReverseTransform() {
        XCTAssertEqual("латиница".applyingReverseTransform(transformationCode: "ru"), "latinica ru")
        XCTAssertNil("латиница".applyingReverseTransform(transformationCode: "rul"))
        XCTAssertNil("latinica".applyingReverseTransform(transformationCode: "ru"))
    }
}
