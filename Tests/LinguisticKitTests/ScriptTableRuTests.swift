//
//  ScriptTableRuTests.swift
//  LinguisticKitTests
//
//  Created by Roman Kerimov on 2018-11-18.
//

import XCTest
@testable import LinguisticKit

class ScriptTableRuTests: XCTestCase {

    let testTable: ScriptTable.RAWScriptTable = [
        [.Cyrl: "Съешь же ещё этих мягких французских булок, да выпей чаю.",
         .Glag: "Ⱄⱏⰵⱎⱐ ⰶⰵ ⰵⱋⱖ ⱔⱅⰹⱈ ⰿⱑⰳⰽⰹⱈ ⱇⱃⰰⱀⱌⱆⰸⱄⰽⰹⱈ ⰱⱆⰾⱁⰽ, ⰴⰰ ⰲⱏⰹⱂⰵⰻ ⱍⰰⱓ.",
         .Latn: "Syyeshj zhe yesjhyo etixh myagkixh francuzskixh bulok, da vyipej chayu."],
        
        [.Cyrl: "СЪЕШЬ ЖЕ ЕЩЁ ЭТИХ МЯГКИХ ФРАНЦУЗСКИХ БУЛОК, ДА ВЫПЕЙ ЧАЮ.",
         .Glag: "ⰔⰟⰅⰞⰠ ⰆⰅ ⰅⰛⰦ ⰤⰕⰉⰘ ⰏⰡⰃⰍⰉⰘ ⰗⰓⰀⰐⰜⰖⰈⰔⰍⰉⰘ ⰁⰖⰎⰑⰍ, ⰄⰀ ⰂⰟⰉⰒⰅⰋ ⰝⰀⰣ.",
         .Latn: "SYYESHJ ZHE YESJHYO ETIXH MYAGKIXH FRANCUZSKIXH BULOK, DA VYIPEJ CHAYU.",],
        
        
        [.Cyrl: "Забжэ",
         .Glag: "Ⰸⰰⰱⰶⱔ",
         .Latn: "Zabzhye"],
        
        
        [.Cyrl: "Чанъань",
         .Glag: "Ⱍⰰⱀⱏⱜⰰⱀⱐ",
         .Latn: "Chanyhanj"],
        
        [.Cyrl: "пэнъю",
         .Glag: "ⱂⱔⱀⱏⱓ",
         .Latn: "pyenyyu"],
        
        [.Cyrl: "секвойе",
         .Glag: "ⱄⰵⰽⰲⱁⰻⰵ",
         .Latn: "sekvojye"],
        
        [.Cyrl: "Йемен",
         .Glag: "Ⰻⰵⰿⰵⱀ",
         .Latn: "Jyemen"],
        
        [.Cyrl: "трансйеменский",
         .Glag: "ⱅⱃⰰⱀⱄⰻⰵⰿⰵⱀⱄⰽⰹⰻ",
         .Latn: "transyjyemenskij"],
        
        [.Cyrl: "безйодовый",
         .Glag: "ⰱⰵⰸⰻⱁⰴⱁⰲⱏⰹⰻ",
         .Latn: "bezyjodovyij"],
        
        
        [.Cyrl: "МКС",
         .Glag: "ⰏⰍⰔ",
         .Latn: "MKS"],
        
        [.Cyrl: "КС",
         .Glag: "ⰍⰔ",
         .Latn: "KS"],
        
        [.Cyrl: "АКС",
         .Glag: "ⰀⰍⰔ",
         .Latn: "AKS"],
        
        [.Cyrl: "ЮСЭКС",
         .Glag: "ⰣⰔⰤⰍⰔ",
         .Latn: "YUSYEKS"],
        
        [.Cyrl: "ЮНЕСКО",
         .Glag: "ⰣⰐⰅⰔⰍⰑ",
         .Latn: "YUNESKO"],
        
        [.Cyrl: "ТЭН",
         .Glag: "ⰕⰤⰐ",
         .Latn: "TYEN"],
        
        [.Cyrl: "тэны",
         .Glag: "ⱅⱔⱀⱏⰹ",
         .Latn: "tyenyi"],
        
        [.Cyrl: "ЖКХ",
         .Glag: "ⰆⰍⰘ",
         .Latn: "ZHKXH"],
        
        [.Cyrl: "ЕГЭ",
         .Glag: "ⰅⰃⰤ",
         .Latn: "YEGYE"],
        
        [.Cyrl: "ЭВМ",
         .Glag: "ⰤⰂⰏ",
         .Latn: "EVM"],
        
        [.Cyrl: "ИРЯ",
         .Glag: "ⰉⰓⰡ",
         .Latn: "IRYA"],
        
        [.Cyrl: "ФИДЕ",
         .Glag: "ⰗⰉⰄⰅ",
         .Latn: "FIDE"],
        
        [.Cyrl: "ЦЕРН",
         .Glag: "ⰜⰅⰓⰐ",
         .Latn: "CERN"],
        
        [.Cyrl: "в МХАТе",
         .Glag: "ⰲ ⰏⰘⰀⰕⰵ",
         .Latn: "v MXHATe"],
        
        [.Cyrl: "ТЮЗ",
         .Glag: "ⰕⰣⰈ",
         .Latn: "TYUZ"],
        
        [.Cyrl: "МАГАТЭ",
         .Glag: "ⰏⰀⰃⰀⰕⰤ",
         .Latn: "MAGATYE"],
        
        [.Cyrl: "ОБСЕ",
         .Glag: "ⰑⰁⰔⰅ",
         .Latn: "OBSE"],
        
        [.Cyrl: "ТЭС",
         .Glag: "ⰕⰤⰔ",
         .Latn: "TYES"],
        
        [.Cyrl: "ОБЖ",
         .Glag: "ⰑⰁⰆ",
         .Latn: "OBZH"],
        
        [.Cyrl: "КамАЗ",
         .Glag: "ⰍⰰⰿⰀⰈ",
         .Latn: "KamAZ"],
        
        
        [.Cyrl: "Петров Ю. Я.",
         .Glag: "Ⱂⰵⱅⱃⱁⰲ Ⱓ. Ⱑ.",
         .Latn: "Petrov Yu. Ya."],
        
        [.Cyrl: "Ю. Я. Петров",
         .Glag: "Ⱓ. Ⱑ. Ⱂⰵⱅⱃⱁⰲ",
         .Latn: "Yu. Ya. Petrov"],
        
        [.Cyrl: "ПЕТРОВ Ю. Я.",
         .Glag: "ⰒⰅⰕⰓⰑⰂ Ⱓ. Ⱑ.",
         .Latn: "PETROV YU. YA."],
        
        [.Cyrl: "Ю. Я. ПЕТРОВ",
         .Glag: "Ⱓ. Ⱑ. ⰒⰅⰕⰓⰑⰂ",
         .Latn: "YU. YA. PETROV"],
        
        [.Cyrl: "о̀колозе́мный",
         .Glag: "ⱁ̀ⰽⱁⰾⱁⰸⰵ́ⰿⱀⱏⰹⰻ",
         .Latn: "òkolozémnyij"],
        
        [.Cyrl: "у̀зкоспециализи́рованный",
         .Glag: "ⱆ̀ⰸⰽⱁⱄⱂⰵⱌⰹⰰⰾⰹⰸⰹ́ⱃⱁⰲⰰⱀⱀⱏⰹⰻ",
         .Latn: "ùzkospecializírovannyij"],
        
        [.Cyrl: "ю̀жнославя́нский",
         .Glag: "ⱓ̀ⰶⱀⱁⱄⰾⰰⰲⱑ́ⱀⱄⰽⰹⰻ",
         .Latn: "yùzhnoslavyánskij"],
        
        [.Cyrl: "ь ъ ѵ",
         .Glag: "ⱐ ⱏ ⱛ",
         .Latn: "hj hy y"],
    ]

    func testRuScriptTable() {
        
        for testCell in testTable {
            
            let translatingPairs = testCell.keys.flatMap { (sourceScript) -> [(Script, Script)] in
                return testCell.keys.compactMap { (targetScript) -> (Script, Script)? in
                    if sourceScript == targetScript {
                        return nil
                    }
                    else {
                        return (sourceScript, targetScript)
                    }
                }
            }
            
            for (sourceScript, targetScript) in translatingPairs {
                let sourceString = testCell[sourceScript]!
                let targetString = testCell[targetScript]!
                
                XCTAssertEqual(sourceString.translating(from: sourceScript, to: targetScript, withTable: .ru), targetString)
            }
        }
    }
    
}
