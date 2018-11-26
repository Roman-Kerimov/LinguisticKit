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
            
            [
                .Cyrl: "СЪЕШЬ ЖЕ ЕЩЁ ЭТИХ МЯГКИХ ФРАНЦУЗСКИХ БУЛОК, ДА ВЫПЕЙ ЧАЮ.",
                .Latn: "SYYESHJ ZHE YESJHYO ETIXH MYAGKIXH FRANCUZSKIXH BULOK, DA VYIPEJ CHAYU.",
            ],
            
            [.Cyrl: "Забжэ", .Latn: "Zabzhye"],
            
            [.Cyrl: "Чанъань", .Latn: "Chanyʼanj"],
            [.Cyrl: "пэнъю", .Latn: "pyenyyu"],
            
            [.Cyrl: "МКС", .Latn: "MKS"],
            [.Cyrl: "КС", .Latn: "KS"],
            [.Cyrl: "АКС", .Latn: "AKS"],
            [.Cyrl: "ЮСЭКС", .Latn: "YUSYEKS"],
            [.Cyrl: "ЮНЕСКО", .Latn: "YUNESKO"],
            [.Cyrl: "ТЭН", .Latn: "TYEN"],
            [.Cyrl: "тэны", .Latn: "tyenyi"],
            [.Cyrl: "ЖКХ", .Latn: "ZHKXH"],
            [.Cyrl: "ЕГЭ", .Latn: "YEGYE"],
            [.Cyrl: "ЭВМ", .Latn: "EVM"],
            [.Cyrl: "ИРЯ", .Latn: "IRYA"],
            [.Cyrl: "ФИДЕ", .Latn: "FIDE"],
            [.Cyrl: "ЦЕРН", .Latn: "CERN"],
            [.Cyrl: "в МХАТе", .Latn: "v MXHATe"],
            [.Cyrl: "ТЮЗ", .Latn: "TYUZ"],
            [.Cyrl: "МАГАТЭ", .Latn: "MAGATYE"],
            [.Cyrl: "ОБСЕ", .Latn: "OBSE"],
            [.Cyrl: "ТЭС", .Latn: "TYES"],
            [.Cyrl: "ОБЖ", .Latn: "OBZH"],
            [.Cyrl: "КамАЗ", .Latn: "KamAZ"],
            
             [.Cyrl: "Петров Ю. Я.", .Latn: "Petrov Yu. Ya."],
             [.Cyrl: "Ю. Я. Петров", .Latn: "Yu. Ya. Petrov"],
             [.Cyrl: "ПЕТРОВ Ю. Я.", .Latn: "PETROV YU. YA."],
             [.Cyrl: "Ю. Я. ПЕТРОВ", .Latn: "YU. YA. PETROV"],
        ]
        
        for testCell in testTable {
            
            let latin = testCell[.Latn]!
            let cyrillic = testCell[.Cyrl]!
            
            XCTAssertEqual(latin.translating(from: .Latn, to: .Cyrl, withTable: .ru), cyrillic)
            XCTAssertEqual(cyrillic.translating(from: .Cyrl, to: .Latn, withTable: .ru), latin)
        }
        
        
    }
}
