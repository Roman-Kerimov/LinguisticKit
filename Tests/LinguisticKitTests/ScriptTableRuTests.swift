//
//  ScriptTableRuTests.swift
//  LinguisticKitTests
//
//  Created by Roman Kerimov on 2018-11-18.
//

import XCTest
@testable import LinguisticKit

class ScriptTableRuTests: XCTestCase {
    
    func XCTAssertRuScriptTable(_ testCase: ScriptTable.RAWScriptTableCell, file: StaticString = #file, line: UInt = #line) {
        XCTAssert(scriptTable: .ru, testCase: testCase, file: file, line: line)
    }

    func testRuScriptTable() {
        
        XCTAssertRuScriptTable(
            [.Cyrl: "Съешь же ещё этих мягких французских булок, да выпей чаю.",
             .Glag: "Ⱄⱏⰵⱎⱐ ⰶⰵ ⰵⱋⱖ ⱔⱅⰹⱈ ⰿⱑⰳⰽⰹⱈ ⱇⱃⰰⱀⱌⱆⰸⱄⰽⰹⱈ ⰱⱆⰾⱁⰽ, ⰴⰰ ⰲⱏⰹⱂⰵⰻ ⱍⰰⱓ.",
             .Latn: "Syyeshj zhe yesjhyo etixh myagkixh francuzskixh bulok, da vyipej chayu."]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "СЪЕШЬ ЖЕ ЕЩЁ ЭТИХ МЯГКИХ ФРАНЦУЗСКИХ БУЛОК, ДА ВЫПЕЙ ЧАЮ.",
             .Glag: "ⰔⰟⰅⰞⰠ ⰆⰅ ⰅⰛⰦ ⰤⰕⰉⰘ ⰏⰡⰃⰍⰉⰘ ⰗⰓⰀⰐⰜⰖⰈⰔⰍⰉⰘ ⰁⰖⰎⰑⰍ, ⰄⰀ ⰂⰟⰉⰒⰅⰋ ⰝⰀⰣ.",
             .Latn: "SYYESHJ ZHE YESJHYO ETIXH MYAGKIXH FRANCUZSKIXH BULOK, DA VYIPEJ CHAYU.",]
        )
        
        
        XCTAssertRuScriptTable(
            [.Cyrl: "Забжэ",
             .Glag: "Ⰸⰰⰱⰶⱔ",
             .Latn: "Zabzhye"]
        )
        
        
        XCTAssertRuScriptTable(
            [.Cyrl: "Чанъань",
             .Glag: "Ⱍⰰⱀⱏⱜⰰⱀⱐ",
             .Latn: "Chanyhanj"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "пэнъю",
             .Glag: "ⱂⱔⱀⱏⱓ",
             .Latn: "pyenyyu"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "секвойе",
             .Glag: "ⱄⰵⰽⰲⱁⰻⰵ",
             .Latn: "sekvojye"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "Йемен",
             .Glag: "Ⰻⰵⰿⰵⱀ",
             .Latn: "Jyemen"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "трансйеменский",
             .Glag: "ⱅⱃⰰⱀⱄⰻⰵⰿⰵⱀⱄⰽⰹⰻ",
             .Latn: "transyjyemenskij"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "безйодовый",
             .Glag: "ⰱⰵⰸⰻⱁⰴⱁⰲⱏⰹⰻ",
             .Latn: "bezyjodovyij"]
        )
        
        
        XCTAssertRuScriptTable(
            [.Cyrl: "МКС",
             .Glag: "ⰏⰍⰔ",
             .Latn: "MKS"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "КС",
             .Glag: "ⰍⰔ",
             .Latn: "KS"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "АКС",
             .Glag: "ⰀⰍⰔ",
             .Latn: "AKS"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ЮСЭКС",
             .Glag: "ⰣⰔⰤⰍⰔ",
             .Latn: "YUSYEKS"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ЮНЕСКО",
             .Glag: "ⰣⰐⰅⰔⰍⰑ",
             .Latn: "YUNESKO"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ТЭН",
             .Glag: "ⰕⰤⰐ",
             .Latn: "TYEN"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "тэны",
             .Glag: "ⱅⱔⱀⱏⰹ",
             .Latn: "tyenyi"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ЖКХ",
             .Glag: "ⰆⰍⰘ",
             .Latn: "ZHKXH"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ЕГЭ",
             .Glag: "ⰅⰃⰤ",
             .Latn: "YEGYE"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ЭВМ",
             .Glag: "ⰤⰂⰏ",
             .Latn: "EVM"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ИРЯ",
             .Glag: "ⰉⰓⰡ",
             .Latn: "IRYA"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ФИДЕ",
             .Glag: "ⰗⰉⰄⰅ",
             .Latn: "FIDE"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ЦЕРН",
             .Glag: "ⰜⰅⰓⰐ",
             .Latn: "CERN"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "в МХАТе",
             .Glag: "ⰲ ⰏⰘⰀⰕⰵ",
             .Latn: "v MXHATe"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ТЮЗ",
             .Glag: "ⰕⰣⰈ",
             .Latn: "TYUZ"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "МАГАТЭ",
             .Glag: "ⰏⰀⰃⰀⰕⰤ",
             .Latn: "MAGATYE"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ОБСЕ",
             .Glag: "ⰑⰁⰔⰅ",
             .Latn: "OBSE"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ТЭС",
             .Glag: "ⰕⰤⰔ",
             .Latn: "TYES"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ОБЖ",
             .Glag: "ⰑⰁⰆ",
             .Latn: "OBZH"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "КамАЗ",
             .Glag: "ⰍⰰⰿⰀⰈ",
             .Latn: "KamAZ"]
        )
        
        
        XCTAssertRuScriptTable(
            [.Cyrl: "Петров Ю. Я.",
             .Glag: "Ⱂⰵⱅⱃⱁⰲ Ⱓ. Ⱑ.",
             .Latn: "Petrov Yu. Ya."]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "Ю. Я. Петров",
             .Glag: "Ⱓ. Ⱑ. Ⱂⰵⱅⱃⱁⰲ",
             .Latn: "Yu. Ya. Petrov"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ПЕТРОВ Ю. Я.",
             .Glag: "ⰒⰅⰕⰓⰑⰂ Ⱓ. Ⱑ.",
             .Latn: "PETROV YU. YA."]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "Ю. Я. ПЕТРОВ",
             .Glag: "Ⱓ. Ⱑ. ⰒⰅⰕⰓⰑⰂ",
             .Latn: "YU. YA. PETROV"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "о̀колозе́мный",
             .Glag: "ⱁ̀ⰽⱁⰾⱁⰸⰵ́ⰿⱀⱏⰹⰻ",
             .Latn: "òkolozémnyij"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "у̀зкоспециализи́рованный",
             .Glag: "ⱆ̀ⰸⰽⱁⱄⱂⰵⱌⰹⰰⰾⰹⰸⰹ́ⱃⱁⰲⰰⱀⱀⱏⰹⰻ",
             .Latn: "ùzkospecializírovannyij"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ю̀жнославя́нский",
             .Glag: "ⱓ̀ⰶⱀⱁⱄⰾⰰⰲⱑ́ⱀⱄⰽⰹⰻ",
             .Latn: "yùzhnoslavyánskij"]
        )
        
        XCTAssertRuScriptTable(
            [.Cyrl: "ь ъ ѵ",
             .Glag: "ⱐ ⱏ ⱛ",
             .Latn: "hj hy y"]
        )
    }
    
}
