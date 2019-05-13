//
//  XCTest.swift
//  LinguisticKitTests
//
//  Created by Roman Kerimov on 2019-04-03.
//

import XCTest
@testable import LinguisticKit

extension XCTest {
    
    func XCTAssert(scriptTable: ScriptTable, testCase: ScriptTable.RAWScriptTableCell, file: StaticString = #file, line: UInt = #line) {
        let transformations = testCase.keys.flatMap { (sourceScript) -> [(Script, Script)] in
            return testCase.keys.compactMap { (targetScript) -> (Script, Script)? in
                if sourceScript == targetScript {
                    return nil
                }
                else {
                    return (sourceScript, targetScript)
                }
            }
        }
        
        for (sourceScript, targetScript) in transformations {
            let sourceString = testCase[sourceScript]!
            let targetString = testCase[targetScript]!
            
            XCTAssertEqual(sourceString.applyingTransform(from: sourceScript, to: targetScript, withTable: scriptTable), targetString, file: file, line: line)
        }
    }
}
