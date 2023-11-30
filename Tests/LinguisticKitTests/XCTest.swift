//
//  XCTest.swift
//  LinguisticKitTests
//
//  Created by Roman Kerimov on 2019-04-03.
//

import XCTest
@testable import LinguisticKit

extension XCTest {
    
    func XCTAssert(scriptTable: ScriptTable, testCase: [Script: String], file: StaticString = #filePath, line: UInt = #line) {
        let locale = Locale(identifier: scriptTable.languageCode)
        
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
            var sourceString = testCase[sourceScript]!
            var targetString = testCase[targetScript]!
            
            if Script.caseSensitiveScripts.contains(sourceScript) == false
                || Script.caseSensitiveScripts.contains(targetScript) == false {
                
                sourceString = sourceString.lowercased(with: locale)
                targetString = targetString.lowercased(with: locale)
            }
            
            XCTAssertEqual(
                sourceString.applyingTransform(from: sourceScript, to: targetScript, withTable: scriptTable),
                targetString,
                file: file,
                line: line
            )
        }
    }
    
    func XCTAssert(word: Word, forms wordForms: WordForms, file: StaticString = #filePath, line: UInt = #line) {
        XCTAssertEqual(word.forms, wordForms.forms, file: file, line: line)
    }
}
