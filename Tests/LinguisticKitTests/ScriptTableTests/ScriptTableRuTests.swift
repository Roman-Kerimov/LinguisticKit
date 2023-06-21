//
//  ScriptTableRuTests.swift
//  LinguisticKitTests
//
//  Created by Roman Kerimov on 2018-11-18.
//

import XCTest
@testable import LinguisticKit

class ScriptTableRuTests: XCTestCase {
    
    func XCTAssertRuScriptTable(_ testCase: [Script: String], file: StaticString = #filePath, line: UInt = #line) {
        XCTAssert(scriptTable: .ru, testCase: testCase, file: file, line: line)
    }
    
    func testRuScriptTable() {
        
        XCTAssertRuScriptTable([
            .Cyrl: "Съешь же ещё этих мягких французских булок, да выпей чаю.",
            .Glag: "Ⱄⱏⰵⱎⱐ ⰶⰵ ⰵⱋⱖ ⱔⱅⰹⱈ ⰿⱑⰳⰽⰹⱈ ⱇⱃⰰⱀⱌⱆⰸⱄⰽⰹⱈ ⰱⱆⰾⱁⰽ, ⰴⰰ ⰲⱏⰹⱂⰵⰻ ⱍⰰⱓ.",
            .Latn: "Syyeshj zhe yesjhyo etikh myagkikh francuzskikh bulok, da vyipej chayu.",
            .Runr: "ᛊᚤᚤᛖᛊᚺᛃ ᛉᚺᛖ ᚤᛖᛊᛃᚺᚤᛟ ᛖᛏᛁᚲᚺ ᛗᚤᚨᚷᚲᛁᚲᚺ ᚠᚱᚨᚾᚳᚢᛉᛊᚲᛁᚲᚺ ᛒᚢᛚᛟᚲ, ᛞᚨ ᚡᚤᛁᛈᛖᛃ ᚳᚺᚨᚤᚢ.",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "СЪЕШЬ ЖЕ ЕЩЁ ЭТИХ МЯГКИХ ФРАНЦУЗСКИХ БУЛОК, ДА ВЫПЕЙ ЧАЮ.",
            .Glag: "ⰔⰟⰅⰞⰠ ⰆⰅ ⰅⰛⰦ ⰤⰕⰉⰘ ⰏⰡⰃⰍⰉⰘ ⰗⰓⰀⰐⰜⰖⰈⰔⰍⰉⰘ ⰁⰖⰎⰑⰍ, ⰄⰀ ⰂⰟⰉⰒⰅⰋ ⰝⰀⰣ.",
            .Latn: "SYYESHJ ZHE YESJHYO ETIKH MYAGKIKH FRANCUZSKIKH BULOK, DA VYIPEJ CHAYU.",
            .Runr: "ᛊᚤᚤᛖᛊᚺᛃ ᛉᚺᛖ ᚤᛖᛊᛃᚺᚤᛟ ᛖᛏᛁᚲᚺ ᛗᚤᚨᚷᚲᛁᚲᚺ ᚠᚱᚨᚾᚳᚢᛉᛊᚲᛁᚲᚺ ᛒᚢᛚᛟᚲ, ᛞᚨ ᚡᚤᛁᛈᛖᛃ ᚳᚺᚨᚤᚢ.",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ъэ",
            .Glag: "ⱏⱜⱔ",
            .Latn: "hyhe",
            .Runr: "ᚺᚤᚺᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "дъэ",
            .Glag: "ⰴⱏⱜⱔ",
            .Latn: "dyhe",
            .Runr: "ᛞᚤᚺᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ъй",
            .Glag: "ⱏⱜⰻ",
            .Latn: "hyhj",
            .Runr: "ᚺᚤᚺᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "дъй",
            .Glag: "ⰴⱏⱜⰻ",
            .Latn: "dyhj",
            .Runr: "ᛞᚤᚺᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "дъь",
            .Glag: "ⰴⱏⱜⱐ",
            .Latn: "dyhhj",
            .Runr: "ᛞᚤᚺᚺᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ъъ",
            .Glag: "ⱏⱏ",
            .Latn: "hyhy",
            .Runr: "ᚺᚤᚺᚤ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "интервьюер",
            .Glag: "ⰹⱀⱅⰵⱃⰲⱐⱓⰵⱃ",
            .Latn: "intervjyuyer",
            .Runr: "ᛁᚾᛏᛖᚱᚡᛃᚤᚢᚤᛖᚱ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "Забжэ",
            .Glag: "Ⰸⰰⰱⰶⱔ",
            .Latn: "Zabzhye",
            .Runr: "ᛉᚨᛒᛉᚺᚤᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "Чанъань",
            .Glag: "Ⱍⰰⱀⱏⱜⰰⱀⱐ",
            .Latn: "Chanyhanj",
            .Runr: "ᚳᚺᚨᚾᚤᚺᚨᚾᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "пэнъю",
            .Glag: "ⱂⱔⱀⱏⱓ",
            .Latn: "pyenyyu",
            .Runr: "ᛈᚤᛖᚾᚤᚤᚢ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "секвойе",
            .Glag: "ⱄⰵⰽⰲⱁⰻⰵ",
            .Latn: "sekvojye",
            .Runr: "ᛊᛖᚲᚡᛟᛃᚤᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "Йемен",
            .Glag: "Ⰻⰵⰿⰵⱀ",
            .Latn: "Jyemen",
            .Runr: "ᛃᚤᛖᛗᛖᚾ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "трансйеменский",
            .Glag: "ⱅⱃⰰⱀⱄⰻⰵⰿⰵⱀⱄⰽⰹⰻ",
            .Latn: "transyjyemenskij",
            .Runr: "ᛏᚱᚨᚾᛊᚤᛃᚤᛖᛗᛖᚾᛊᚲᛁᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "безйодовый",
            .Glag: "ⰱⰵⰸⰻⱁⰴⱁⰲⱏⰹⰻ",
            .Latn: "bezyjodovyij",
            .Runr: "ᛒᛖᛉᚤᛃᛟᛞᛟᚡᚤᛁᛃ",
        ])
        
        
        XCTAssertRuScriptTable([
            .Cyrl: "МКС",
            .Glag: "ⰏⰍⰔ",
            .Latn: "MKS",
            .Runr: "ᛗᚲᛊ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "КС",
            .Glag: "ⰍⰔ",
            .Latn: "KS",
            .Runr: "ᚲᛊ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "АКС",
            .Glag: "ⰀⰍⰔ",
            .Latn: "AKS",
            .Runr: "ᚨᚲᛊ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ЮСЭКС",
            .Glag: "ⰣⰔⰤⰍⰔ",
            .Latn: "YUSYEKS",
            .Runr: "ᚤᚢᛊᚤᛖᚲᛊ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ЮНЕСКО",
            .Glag: "ⰣⰐⰅⰔⰍⰑ",
            .Latn: "YUNESKO",
            .Runr: "ᚤᚢᚾᛖᛊᚲᛟ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ТЭН",
            .Glag: "ⰕⰤⰐ",
            .Latn: "TYEN",
            .Runr: "ᛏᚤᛖᚾ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "тэны",
            .Glag: "ⱅⱔⱀⱏⰹ",
            .Latn: "tyenyi",
            .Runr: "ᛏᚤᛖᚾᚤᛁ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ЖКХ",
            .Glag: "ⰆⰍⰘ",
            .Latn: "ZHKKH",
            .Runr: "ᛉᚺᚲᚲᚺ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ЕГЭ",
            .Glag: "ⰅⰃⰤ",
            .Latn: "YEGYE",
            .Runr: "ᚤᛖᚷᚤᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ЭВМ",
            .Glag: "ⰤⰂⰏ",
            .Latn: "EVM",
            .Runr: "ᛖᚡᛗ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ИРЯ",
            .Glag: "ⰉⰓⰡ",
            .Latn: "IRYA",
            .Runr: "ᛁᚱᚤᚨ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ФИДЕ",
            .Glag: "ⰗⰉⰄⰅ",
            .Latn: "FIDE",
            .Runr: "ᚠᛁᛞᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ЦЕРН",
            .Glag: "ⰜⰅⰓⰐ",
            .Latn: "CERN",
            .Runr: "ᚳᛖᚱᚾ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "в МХАТе",
            .Glag: "ⰲ ⰏⰘⰀⰕⰵ",
            .Latn: "v MKHATe",
            .Runr: "ᚡ ᛗᚲᚺᚨᛏᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ТЮЗ",
            .Glag: "ⰕⰣⰈ",
            .Latn: "TYUZ",
            .Runr: "ᛏᚤᚢᛉ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "МАГАТЭ",
            .Glag: "ⰏⰀⰃⰀⰕⰤ",
            .Latn: "MAGATYE",
            .Runr: "ᛗᚨᚷᚨᛏᚤᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ОБСЕ",
            .Glag: "ⰑⰁⰔⰅ",
            .Latn: "OBSE",
            .Runr: "ᛟᛒᛊᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ТЭС",
            .Glag: "ⰕⰤⰔ",
            .Latn: "TYES",
            .Runr: "ᛏᚤᛖᛊ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ОБЖ",
            .Glag: "ⰑⰁⰆ",
            .Latn: "OBZH",
            .Runr: "ᛟᛒᛉᚺ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "КамАЗ",
            .Glag: "ⰍⰰⰿⰀⰈ",
            .Latn: "KamAZ",
            .Runr: "ᚲᚨᛗᚨᛉ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "Петров Ю. Я.",
            .Glag: "Ⱂⰵⱅⱃⱁⰲ Ⱓ. Ⱑ.",
            .Latn: "Petrov Yu. Ya.",
            .Runr: "ᛈᛖᛏᚱᛟᚡ ᚤᚢ. ᚤᚨ.",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "Ю. Я. Петров",
            .Glag: "Ⱓ. Ⱑ. Ⱂⰵⱅⱃⱁⰲ",
            .Latn: "Yu. Ya. Petrov",
            .Runr: "ᚤᚢ. ᚤᚨ. ᛈᛖᛏᚱᛟᚡ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ПЕТРОВ Ю. Я.",
            .Glag: "ⰒⰅⰕⰓⰑⰂ Ⱓ. Ⱑ.",
            .Latn: "PETROV YU. YA.",
            .Runr: "ᛈᛖᛏᚱᛟᚡ ᚤᚢ. ᚤᚨ.",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "Ю. Я. ПЕТРОВ",
            .Glag: "Ⱓ. Ⱑ. ⰒⰅⰕⰓⰑⰂ",
            .Latn: "YU. YA. PETROV",
            .Runr: "ᚤᚢ. ᚤᚨ. ᛈᛖᛏᚱᛟᚡ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ОБЖ — основы безопасности жизнедеятельности",
            .Glag: "ⰑⰁⰆ — ⱁⱄⱀⱁⰲⱏⰹ ⰱⰵⰸⱁⱂⰰⱄⱀⱁⱄⱅⰹ ⰶⰹⰸⱀⰵⰴⰵⱑⱅⰵⰾⱐⱀⱁⱄⱅⰹ",
            .Latn: "OBZH — osnovyi bezopasnosti zhiznedeyateljnosti",
            .Runr: "ᛟᛒᛉᚺ — ᛟᛊᚾᛟᚡᚤᛁ ᛒᛖᛉᛟᛈᚨᛊᚾᛟᛊᛏᛁ ᛉᚺᛁᛉᚾᛖᛞᛖᚤᚨᛏᛖᛚᛃᚾᛟᛊᛏᛁ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "о̀колозе́мный",
            .Glag: "ⱁ̀ⰽⱁⰾⱁⰸⰵ́ⰿⱀⱏⰹⰻ",
            .Latn: "òkolozémnyij",
            .Runr: "ᛟ̀ᚲᛟᛚᛟᛉᛖ́ᛗᚾᚤᛁᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "у̀зкоспециализи́рованный",
            .Glag: "ⱆ̀ⰸⰽⱁⱄⱂⰵⱌⰹⰰⰾⰹⰸⰹ́ⱃⱁⰲⰰⱀⱀⱏⰹⰻ",
            .Latn: "ùzkospecializírovannyij",
            .Runr: "ᚢ̀ᛉᚲᛟᛊᛈᛖᚳᛁᚨᛚᛁᛉᛁ́ᚱᛟᚡᚨᚾᚾᚤᛁᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ю̀жнославя́нский",
            .Glag: "ⱓ̀ⰶⱀⱁⱄⰾⰰⰲⱑ́ⱀⱄⰽⰹⰻ",
            .Latn: "yùzhnoslavyánskij",
            .Runr: "ᚤᚢ̀ᛉᚺᚾᛟᛊᛚᚨᚡᚤᚨ́ᚾᛊᚲᛁᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ь ъ ѵ",
            .Glag: "ⱐ ⱏ ⱛ",
            .Latn: "hj hy y",
            .Runr: "ᚺᛃ ᚺᚤ ᚤ",
        ])
    }
}
