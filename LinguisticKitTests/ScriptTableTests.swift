//
//  ScriptTableTests.swift
//  LinguisticKitTests
//
//  Created by Roman Kerimov on 2018-11-18.
//

import XCTest
@testable import LinguisticKit

class ScriptTableTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRuScriptTable() {
        
        let testTable: ScriptTable.RAWScriptTable = [
            [
                .Cyrl: "Съешь же ещё этих мягких французских булок, да выпей чаю.",
                .Latn: "Syyeshj zhe yesjhyo etixh myagkixh francuzskixh bulok, da vyipej chayu.",
            ],
            
            [.Cyrl: "Забжэ", .Latn: "Zabzhye"],
            
            [.Cyrl: "Чанъань", .Latn: "Chanyʼanj"],
            [.Cyrl: "пэнъю", .Latn: "pyenyyu"],
            
            [.Cyrl: "МКС", .Latn: "MKS"],
            [.Cyrl: "КС", .Latn: "KS"],
            [.Cyrl: "АКС", .Latn: "AKS"],
            [.Cyrl: "ЮСЭКС", .Latn: "YuSEKS"],
            [.Cyrl: "ЮНЕСКО", .Latn: "YuNYeSKO"],
            [.Cyrl: "ТЭН", .Latn: "TEN"],
            [.Cyrl: "тэны", .Latn: "tyenyi"],
            [.Cyrl: "ЖКХ", .Latn: "ZhKXh"],
            [.Cyrl: "ЕГЭ", .Latn: "YeGE"],
            [.Cyrl: "ЭВМ", .Latn: "EVM"],
            [.Cyrl: "ИРЯ", .Latn: "IRYa"],
            [.Cyrl: "ФИДЕ", .Latn: "FIDYe"],
            [.Cyrl: "ЦЕРН", .Latn: "CYeRN"],
            [.Cyrl: "МХАТ", .Latn: "MXhAT"],
            [.Cyrl: "ТЮЗ", .Latn: "TYuZ"],
            [.Cyrl: "МАГАТЭ", .Latn: "MAGATE"],
            [.Cyrl: "ОБСЕ", .Latn: "OBSYe"],
            [.Cyrl: "ТЭС", .Latn: "TES"],
            [.Cyrl: "ОБЖ", .Latn: "OBZh"],
        ]
        
        for testCell in testTable {
            
            let latin = testCell[.Latn]!
            let cyrillic = testCell[.Cyrl]!
            
            XCTAssertEqual(latin.translating(from: .Latn, to: .Cyrl, withTable: .ru), cyrillic)
            XCTAssertEqual(cyrillic.translating(from: .Cyrl, to: .Latn, withTable: .ru), latin)
        }
        
        
    }
}
