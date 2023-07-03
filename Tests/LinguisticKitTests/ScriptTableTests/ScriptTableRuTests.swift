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
            .Perm: "𐍡𐍯𐍔𐍥𐍰 𐍕𐍔 𐍔𐍦𐍩 𐍱𐍢𐍙𐍬 𐍜𐍴𐍒𐍚𐍙𐍬 𐍫𐍠𐍐𐍝𐍭𐍣𐍗𐍡𐍚𐍙𐍬 𐍑𐍣𐍛𐍞𐍚, 𐍓𐍐 𐍮𐍨𐍟𐍔𐍧 𐍤𐍐𐍳.",
            .Runr: "ᛊᚤᚤᛖᛊᚺᛃ ᛉᚺᛖ ᚤᛖᛊᛃᚺᚤᛟ ᛖᛏᛁᚲᚺ ᛗᚤᚨᚷᚲᛁᚲᚺ ᚠᚱᚨᚾᚳᚢᛉᛊᚲᛁᚲᚺ ᛒᚢᛚᛟᚲ, ᛞᚨ ᚡᚤᛁᛈᛖᛃ ᚳᚺᚨᚤᚢ.",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "СЪЕШЬ ЖЕ ЕЩЁ ЭТИХ МЯГКИХ ФРАНЦУЗСКИХ БУЛОК, ДА ВЫПЕЙ ЧАЮ.",
            .Glag: "ⰔⰟⰅⰞⰠ ⰆⰅ ⰅⰛⰦ ⰤⰕⰉⰘ ⰏⰡⰃⰍⰉⰘ ⰗⰓⰀⰐⰜⰖⰈⰔⰍⰉⰘ ⰁⰖⰎⰑⰍ, ⰄⰀ ⰂⰟⰉⰒⰅⰋ ⰝⰀⰣ.",
            .Latn: "SYYESHJ ZHE YESJHYO ETIKH MYAGKIKH FRANCUZSKIKH BULOK, DA VYIPEJ CHAYU.",
            .Perm: "𐍡𐍯𐍔𐍥𐍰 𐍕𐍔 𐍔𐍦𐍩 𐍱𐍢𐍙𐍬 𐍜𐍴𐍒𐍚𐍙𐍬 𐍫𐍠𐍐𐍝𐍭𐍣𐍗𐍡𐍚𐍙𐍬 𐍑𐍣𐍛𐍞𐍚, 𐍓𐍐 𐍮𐍨𐍟𐍔𐍧 𐍤𐍐𐍳.",
            .Runr: "ᛊᚤᚤᛖᛊᚺᛃ ᛉᚺᛖ ᚤᛖᛊᛃᚺᚤᛟ ᛖᛏᛁᚲᚺ ᛗᚤᚨᚷᚲᛁᚲᚺ ᚠᚱᚨᚾᚳᚢᛉᛊᚲᛁᚲᚺ ᛒᚢᛚᛟᚲ, ᛞᚨ ᚡᚤᛁᛈᛖᛃ ᚳᚺᚨᚤᚢ.",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ъэ",
            .Glag: "ⱏⱜⱔ",
            .Latn: "hyhe",
            .Perm: "𐍯𐍱",
            .Runr: "ᚺᚤᚺᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "дъэ",
            .Glag: "ⰴⱏⱜⱔ",
            .Latn: "dyhe",
            .Perm: "𐍓𐍯𐍱",
            .Runr: "ᛞᚤᚺᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ъй",
            .Glag: "ⱏⱜⰻ",
            .Latn: "hyhj",
            .Perm: "𐍯𐍧",
            .Runr: "ᚺᚤᚺᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "дъй",
            .Glag: "ⰴⱏⱜⰻ",
            .Latn: "dyhj",
            .Perm: "𐍓𐍯𐍧",
            .Runr: "ᛞᚤᚺᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "дъь",
            .Glag: "ⰴⱏⱜⱐ",
            .Latn: "dyhhj",
            .Perm: "𐍓𐍯𐍰",
            .Runr: "ᛞᚤᚺᚺᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ъъ",
            .Glag: "ⱏⱏ",
            .Latn: "hyhy",
            .Perm: "𐍯𐍯",
            .Runr: "ᚺᚤᚺᚤ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "интервьюер",
            .Glag: "ⰹⱀⱅⰵⱃⰲⱐⱓⰵⱃ",
            .Latn: "intervjyuyer",
            .Perm: "𐍙𐍝𐍢𐍔𐍠𐍮𐍰𐍳𐍔𐍠",
            .Runr: "ᛁᚾᛏᛖᚱᚡᛃᚤᚢᚤᛖᚱ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "Забжэ",
            .Glag: "Ⰸⰰⰱⰶⱔ",
            .Latn: "Zabzhye",
            .Perm: "𐍗𐍐𐍑𐍕𐍱",
            .Runr: "ᛉᚨᛒᛉᚺᚤᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "Чанъань",
            .Glag: "Ⱍⰰⱀⱏⱜⰰⱀⱐ",
            .Latn: "Chanyhanj",
            .Perm: "𐍤𐍐𐍝𐍯𐍐𐍝𐍰",
            .Runr: "ᚳᚺᚨᚾᚤᚺᚨᚾᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "пэнъю",
            .Glag: "ⱂⱔⱀⱏⱓ",
            .Latn: "pyenyyu",
            .Perm: "𐍟𐍱𐍝𐍯𐍳",
            .Runr: "ᛈᚤᛖᚾᚤᚤᚢ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "секвойе",
            .Glag: "ⱄⰵⰽⰲⱁⰻⰵ",
            .Latn: "sekvojye",
            .Perm: "𐍡𐍔𐍚𐍮𐍞𐍧𐍔",
            .Runr: "ᛊᛖᚲᚡᛟᛃᚤᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "Йемен",
            .Glag: "Ⰻⰵⰿⰵⱀ",
            .Latn: "Jyemen",
            .Perm: "𐍧𐍔𐍜𐍔𐍝",
            .Runr: "ᛃᚤᛖᛗᛖᚾ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "трансйеменский",
            .Glag: "ⱅⱃⰰⱀⱄⰻⰵⰿⰵⱀⱄⰽⰹⰻ",
            .Latn: "transyjyemenskij",
            .Perm: "𐍢𐍠𐍐𐍝𐍡𐍧𐍔𐍜𐍔𐍝𐍡𐍚𐍙𐍧",
            .Runr: "ᛏᚱᚨᚾᛊᚤᛃᚤᛖᛗᛖᚾᛊᚲᛁᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "безйодовый",
            .Glag: "ⰱⰵⰸⰻⱁⰴⱁⰲⱏⰹⰻ",
            .Latn: "bezyjodovyij",
            .Perm: "𐍑𐍔𐍗𐍧𐍞𐍓𐍞𐍮𐍨𐍧",
            .Runr: "ᛒᛖᛉᚤᛃᛟᛞᛟᚡᚤᛁᛃ",
        ])
        
        
        XCTAssertRuScriptTable([
            .Cyrl: "МКС",
            .Glag: "ⰏⰍⰔ",
            .Latn: "MKS",
            .Perm: "𐍜𐍚𐍡",
            .Runr: "ᛗᚲᛊ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "КС",
            .Glag: "ⰍⰔ",
            .Latn: "KS",
            .Perm: "𐍚𐍡",
            .Runr: "ᚲᛊ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "АКС",
            .Glag: "ⰀⰍⰔ",
            .Latn: "AKS",
            .Perm: "𐍐𐍚𐍡",
            .Runr: "ᚨᚲᛊ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ЮСЭКС",
            .Glag: "ⰣⰔⰤⰍⰔ",
            .Latn: "YUSYEKS",
            .Perm: "𐍳𐍡𐍱𐍚𐍡",
            .Runr: "ᚤᚢᛊᚤᛖᚲᛊ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ЮНЕСКО",
            .Glag: "ⰣⰐⰅⰔⰍⰑ",
            .Latn: "YUNESKO",
            .Perm: "𐍳𐍝𐍔𐍡𐍚𐍞",
            .Runr: "ᚤᚢᚾᛖᛊᚲᛟ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ТЭН",
            .Glag: "ⰕⰤⰐ",
            .Latn: "TYEN",
            .Perm: "𐍢𐍱𐍝",
            .Runr: "ᛏᚤᛖᚾ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "тэны",
            .Glag: "ⱅⱔⱀⱏⰹ",
            .Latn: "tyenyi",
            .Perm: "𐍢𐍱𐍝𐍨",
            .Runr: "ᛏᚤᛖᚾᚤᛁ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ЖКХ",
            .Glag: "ⰆⰍⰘ",
            .Latn: "ZHKKH",
            .Perm: "𐍕𐍚𐍬",
            .Runr: "ᛉᚺᚲᚲᚺ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ЕГЭ",
            .Glag: "ⰅⰃⰤ",
            .Latn: "YEGYE",
            .Perm: "𐍔𐍒𐍱",
            .Runr: "ᚤᛖᚷᚤᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ЭВМ",
            .Glag: "ⰤⰂⰏ",
            .Latn: "EVM",
            .Perm: "𐍱𐍮𐍜",
            .Runr: "ᛖᚡᛗ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ИРЯ",
            .Glag: "ⰉⰓⰡ",
            .Latn: "IRYA",
            .Perm: "𐍙𐍠𐍴",
            .Runr: "ᛁᚱᚤᚨ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ФИДЕ",
            .Glag: "ⰗⰉⰄⰅ",
            .Latn: "FIDE",
            .Perm: "𐍫𐍙𐍓𐍔",
            .Runr: "ᚠᛁᛞᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ЦЕРН",
            .Glag: "ⰜⰅⰓⰐ",
            .Latn: "CERN",
            .Perm: "𐍭𐍔𐍠𐍝",
            .Runr: "ᚳᛖᚱᚾ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "в МХАТе",
            .Glag: "ⰲ ⰏⰘⰀⰕⰵ",
            .Latn: "v MKHATe",
            .Perm: "𐍮 𐍜𐍬𐍐𐍢𐍔",
            .Runr: "ᚡ ᛗᚲᚺᚨᛏᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ТЮЗ",
            .Glag: "ⰕⰣⰈ",
            .Latn: "TYUZ",
            .Perm: "𐍢𐍳𐍗",
            .Runr: "ᛏᚤᚢᛉ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "МАГАТЭ",
            .Glag: "ⰏⰀⰃⰀⰕⰤ",
            .Latn: "MAGATYE",
            .Perm: "𐍜𐍐𐍒𐍐𐍢𐍱",
            .Runr: "ᛗᚨᚷᚨᛏᚤᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ОБСЕ",
            .Glag: "ⰑⰁⰔⰅ",
            .Latn: "OBSE",
            .Perm: "𐍞𐍑𐍡𐍔",
            .Runr: "ᛟᛒᛊᛖ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ТЭС",
            .Glag: "ⰕⰤⰔ",
            .Latn: "TYES",
            .Perm: "𐍢𐍱𐍡",
            .Runr: "ᛏᚤᛖᛊ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ОБЖ",
            .Glag: "ⰑⰁⰆ",
            .Latn: "OBZH",
            .Perm: "𐍞𐍑𐍕",
            .Runr: "ᛟᛒᛉᚺ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "КамАЗ",
            .Glag: "ⰍⰰⰿⰀⰈ",
            .Latn: "KamAZ",
            .Perm: "𐍚𐍐𐍜𐍐𐍗",
            .Runr: "ᚲᚨᛗᚨᛉ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "Петров Ю. Я.",
            .Glag: "Ⱂⰵⱅⱃⱁⰲ Ⱓ. Ⱑ.",
            .Latn: "Petrov Yu. Ya.",
            .Perm: "𐍟𐍔𐍢𐍠𐍞𐍮 𐍳. 𐍴.",
            .Runr: "ᛈᛖᛏᚱᛟᚡ ᚤᚢ. ᚤᚨ.",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "Ю. Я. Петров",
            .Glag: "Ⱓ. Ⱑ. Ⱂⰵⱅⱃⱁⰲ",
            .Latn: "Yu. Ya. Petrov",
            .Perm: "𐍳. 𐍴. 𐍟𐍔𐍢𐍠𐍞𐍮",
            .Runr: "ᚤᚢ. ᚤᚨ. ᛈᛖᛏᚱᛟᚡ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ПЕТРОВ Ю. Я.",
            .Glag: "ⰒⰅⰕⰓⰑⰂ Ⱓ. Ⱑ.",
            .Latn: "PETROV YU. YA.",
            .Perm: "𐍟𐍔𐍢𐍠𐍞𐍮 𐍳. 𐍴.",
            .Runr: "ᛈᛖᛏᚱᛟᚡ ᚤᚢ. ᚤᚨ.",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "Ю. Я. ПЕТРОВ",
            .Glag: "Ⱓ. Ⱑ. ⰒⰅⰕⰓⰑⰂ",
            .Latn: "YU. YA. PETROV",
            .Perm: "𐍳. 𐍴. 𐍟𐍔𐍢𐍠𐍞𐍮",
            .Runr: "ᚤᚢ. ᚤᚨ. ᛈᛖᛏᚱᛟᚡ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ОБЖ — основы безопасности жизнедеятельности",
            .Glag: "ⰑⰁⰆ — ⱁⱄⱀⱁⰲⱏⰹ ⰱⰵⰸⱁⱂⰰⱄⱀⱁⱄⱅⰹ ⰶⰹⰸⱀⰵⰴⰵⱑⱅⰵⰾⱐⱀⱁⱄⱅⰹ",
            .Latn: "OBZH — osnovyi bezopasnosti zhiznedeyateljnosti",
            .Perm: "𐍞𐍑𐍕 — 𐍞𐍡𐍝𐍞𐍮𐍨 𐍑𐍔𐍗𐍞𐍟𐍐𐍡𐍝𐍞𐍡𐍢𐍙 𐍕𐍙𐍗𐍝𐍔𐍓𐍔𐍴𐍢𐍔𐍛𐍰𐍝𐍞𐍡𐍢𐍙",
            .Runr: "ᛟᛒᛉᚺ — ᛟᛊᚾᛟᚡᚤᛁ ᛒᛖᛉᛟᛈᚨᛊᚾᛟᛊᛏᛁ ᛉᚺᛁᛉᚾᛖᛞᛖᚤᚨᛏᛖᛚᛃᚾᛟᛊᛏᛁ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "о̀колозе́мный",
            .Glag: "ⱁ̀ⰽⱁⰾⱁⰸⰵ́ⰿⱀⱏⰹⰻ",
            .Latn: "òkolozémnyij",
            .Perm: "𐍞̀𐍚𐍞𐍛𐍞𐍗𐍔́𐍜𐍝𐍨𐍧",
            .Runr: "ᛟ̀ᚲᛟᛚᛟᛉᛖ́ᛗᚾᚤᛁᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "у̀зкоспециализи́рованный",
            .Glag: "ⱆ̀ⰸⰽⱁⱄⱂⰵⱌⰹⰰⰾⰹⰸⰹ́ⱃⱁⰲⰰⱀⱀⱏⰹⰻ",
            .Latn: "ùzkospecializírovannyij",
            .Perm: "𐍣̀𐍗𐍚𐍞𐍡𐍟𐍔𐍭𐍙𐍐𐍛𐍙𐍗𐍙́𐍠𐍞𐍮𐍐𐍝𐍝𐍨𐍧",
            .Runr: "ᚢ̀ᛉᚲᛟᛊᛈᛖᚳᛁᚨᛚᛁᛉᛁ́ᚱᛟᚡᚨᚾᚾᚤᛁᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ю̀жнославя́нский",
            .Glag: "ⱓ̀ⰶⱀⱁⱄⰾⰰⰲⱑ́ⱀⱄⰽⰹⰻ",
            .Latn: "yùzhnoslavyánskij",
            .Perm: "𐍳̀𐍕𐍝𐍞𐍡𐍛𐍐𐍮𐍴́𐍝𐍡𐍚𐍙𐍧",
            .Runr: "ᚤᚢ̀ᛉᚺᚾᛟᛊᛚᚨᚡᚤᚨ́ᚾᛊᚲᛁᛃ",
        ])
        
        XCTAssertRuScriptTable([
            .Cyrl: "ь ъ ѵ",
            .Glag: "ⱐ ⱏ ⱛ",
            .Latn: "hj hy y",
            .Perm: "𐍰 𐍯 𐍧𐍶",
            .Runr: "ᚺᛃ ᚺᚤ ᚤ",
        ])
    }
}
