//
//  ScriptTable.ja.swift
//  
//
//  Created by Roman Kerimov on 2020-07-20.
//

public extension ScriptTable {
    static let ja = ScriptTable(languageCode: "ja", defaultScript: .Hrkt) {
        var scriptTable: RAWScriptTable = [
            .init([.Hira: "あ", .Kana: "ア", .Latn: "a"], type: .vowel),
            .init([.Hira: "い", .Kana: "イ", .Latn: "i"], type: .vowel),
            .init([.Hira: "う", .Kana: "ウ", .Latn: "u"], type: .vowel),
            .init([.Hira: "え", .Kana: "エ", .Latn: "e"], type: .vowel),
            .init([.Hira: "お", .Kana: "オ", .Latn: "o"], type: .vowel),
            
            .init([.Hira: "か", .Kana: "カ", .Latn: "ka"], type: .consonant),
            .init([.Hira: "き", .Kana: "キ", .Latn: "ki"], type: .consonant),
            .init([.Hira: "く", .Kana: "ク", .Latn: "ku"], type: .consonant),
            .init([.Hira: "け", .Kana: "ケ", .Latn: "ke"], type: .consonant),
            .init([.Hira: "こ", .Kana: "コ", .Latn: "ko"], type: .consonant),
            .init([.Hira: "きゃ", .Kana: "キャ", .Latn: "kya"], type: .consonant),
            .init([.Hira: "きゅ", .Kana: "キュ", .Latn: "kyu"], type: .consonant),
            .init([.Hira: "きょ", .Kana: "キョ", .Latn: "kyo"], type: .consonant),
            
            .init([.Hira: "さ", .Kana: "サ", .Latn: "sa"], type: .consonant),
            .init([.Hira: "し", .Kana: "シ", .Latn: "si"], type: .consonant),
            .init([.Hira: "す", .Kana: "ス", .Latn: "su"], type: .consonant),
            .init([.Hira: "せ", .Kana: "セ", .Latn: "se"], type: .consonant),
            .init([.Hira: "そ", .Kana: "ソ", .Latn: "so"], type: .consonant),
            .init([.Hira: "しゃ", .Kana: "シャ", .Latn: "sya"], type: .consonant),
            .init([.Hira: "しゅ", .Kana: "シュ", .Latn: "syu"], type: .consonant),
            .init([.Hira: "しょ", .Kana: "ショ", .Latn: "syo"], type: .consonant),
            
            .init([.Hira: "た", .Kana: "タ", .Latn: "ta"], type: .consonant),
            .init([.Hira: "ち", .Kana: "チ", .Latn: "ti"], type: .consonant),
            .init([.Hira: "つ", .Kana: "ツ", .Latn: "tu"], type: .consonant),
            .init([.Hira: "て", .Kana: "テ", .Latn: "te"], type: .consonant),
            .init([.Hira: "と", .Kana: "ト", .Latn: "to"], type: .consonant),
            .init([.Hira: "ちゃ", .Kana: "チャ", .Latn: "tya"], type: .consonant),
            .init([.Hira: "ちゅ", .Kana: "チュ", .Latn: "tyu"], type: .consonant),
            .init([.Hira: "ちょ", .Kana: "チョ", .Latn: "tyo"], type: .consonant),
            
            .init([.Hira: "な", .Kana: "ナ", .Latn: "na"], type: .consonant),
            .init([.Hira: "に", .Kana: "ニ", .Latn: "ni"], type: .consonant),
            .init([.Hira: "ぬ", .Kana: "ヌ", .Latn: "nu"], type: .consonant),
            .init([.Hira: "ね", .Kana: "ネ", .Latn: "ne"], type: .consonant),
            .init([.Hira: "の", .Kana: "ノ", .Latn: "no"], type: .consonant),
            .init([.Hira: "にゃ", .Kana: "ニャ", .Latn: "nya"], type: .consonant),
            .init([.Hira: "にゅ", .Kana: "ニュ", .Latn: "nyu"], type: .consonant),
            .init([.Hira: "にょ", .Kana: "ニョ", .Latn: "nyo"], type: .consonant),
            
            .init([.Hira: "は", .Kana: "ハ", .Latn: "ha"], type: .consonant),
            .init([.Hira: "ひ", .Kana: "ヒ", .Latn: "hi"], type: .consonant),
            .init([.Hira: "ふ", .Kana: "フ", .Latn: "hu"], type: .consonant),
            .init([.Hira: "へ", .Kana: "ヘ", .Latn: "he"], type: .consonant),
            .init([.Hira: "ほ", .Kana: "ホ", .Latn: "ho"], type: .consonant),
            .init([.Hira: "ひゃ", .Kana: "ヒャ", .Latn: "hya"], type: .consonant),
            .init([.Hira: "ひゅ", .Kana: "ヒュ", .Latn: "hyu"], type: .consonant),
            .init([.Hira: "ひょ", .Kana: "ヒョ", .Latn: "hyo"], type: .consonant),
            
            .init([.Hira: "ま", .Kana: "マ", .Latn: "ma"], type: .consonant),
            .init([.Hira: "み", .Kana: "ミ", .Latn: "mi"], type: .consonant),
            .init([.Hira: "む", .Kana: "ム", .Latn: "mu"], type: .consonant),
            .init([.Hira: "め", .Kana: "メ", .Latn: "me"], type: .consonant),
            .init([.Hira: "も", .Kana: "モ", .Latn: "mo"], type: .consonant),
            .init([.Hira: "みゃ", .Kana: "ミャ", .Latn: "mya"], type: .consonant),
            .init([.Hira: "みゅ", .Kana: "ミュ", .Latn: "myu"], type: .consonant),
            .init([.Hira: "みょ", .Kana: "ミョ", .Latn: "myo"], type: .consonant),
            
            .init([.Hira: "や", .Kana: "ヤ", .Latn: "ya"], type: .consonant),
            .init([.Hira: "ゆ", .Kana: "ユ", .Latn: "yu"], type: .consonant),
            .init([.Hira: "よ", .Kana: "ヨ", .Latn: "yo"], type: .consonant),
            
            .init([.Hira: "ら", .Kana: "ラ", .Latn: "ra"], type: .consonant),
            .init([.Hira: "り", .Kana: "リ", .Latn: "ri"], type: .consonant),
            .init([.Hira: "る", .Kana: "ル", .Latn: "ru"], type: .consonant),
            .init([.Hira: "れ", .Kana: "レ", .Latn: "re"], type: .consonant),
            .init([.Hira: "ろ", .Kana: "ロ", .Latn: "ro"], type: .consonant),
            .init([.Hira: "りゃ", .Kana: "リャ", .Latn: "rya"], type: .consonant),
            .init([.Hira: "りゅ", .Kana: "リュ", .Latn: "ryu"], type: .consonant),
            .init([.Hira: "りょ", .Kana: "リョ", .Latn: "ryo"], type: .consonant),
            
            .init([.Hira: "わ", .Kana: "ワ", .Latn: "wa"], type: .consonant),
            .init([.Hira: "ゐ", .Kana: "ヰ", .Latn: "wi"], type: .consonant),
            .init([.Hira: "ゑ", .Kana: "ヱ", .Latn: "we"], type: .consonant),
            .init([.Hira: "を", .Kana: "ヲ", .Latn: "wo"], type: .consonant),
            
            .init([.Hira: "ん", .Kana: "ン", .Latn: "n"], type: .consonant),
            
            .init([.Hira: "が", .Kana: "ガ", .Latn: "ga"], type: .consonant),
            .init([.Hira: "ぎ", .Kana: "ギ", .Latn: "gi"], type: .consonant),
            .init([.Hira: "ぐ", .Kana: "グ", .Latn: "gu"], type: .consonant),
            .init([.Hira: "げ", .Kana: "ゲ", .Latn: "ge"], type: .consonant),
            .init([.Hira: "ご", .Kana: "ゴ", .Latn: "go"], type: .consonant),
            .init([.Hira: "ぎゃ", .Kana: "ギャ", .Latn: "gya"], type: .consonant),
            .init([.Hira: "ぎゅ", .Kana: "ギュ", .Latn: "gyu"], type: .consonant),
            .init([.Hira: "ぎょ", .Kana: "ギョ", .Latn: "gyo"], type: .consonant),
            
            .init([.Hira: "ざ", .Kana: "ザ", .Latn: "za"], type: .consonant),
            .init([.Hira: "じ", .Kana: "ジ", .Latn: "zi"], type: .consonant),
            .init([.Hira: "ず", .Kana: "ズ", .Latn: "zu"], type: .consonant),
            .init([.Hira: "ぜ", .Kana: "ゼ", .Latn: "ze"], type: .consonant),
            .init([.Hira: "ぞ", .Kana: "ゾ", .Latn: "zo"], type: .consonant),
            .init([.Hira: "じゃ", .Kana: "ジャ", .Latn: "zya"], type: .consonant),
            .init([.Hira: "じゅ", .Kana: "ジュ", .Latn: "zyu"], type: .consonant),
            .init([.Hira: "じょ", .Kana: "ジョ", .Latn: "zyo"], type: .consonant),
            
            .init([.Hira: "だ", .Kana: "ダ", .Latn: "da"], type: .consonant),
            .init([.Hira: "ぢ", .Kana: "ヂ", .Latn: "di"], type: .consonant),
            .init([.Hira: "づ", .Kana: "ヅ", .Latn: "du"], type: .consonant),
            .init([.Hira: "で", .Kana: "デ", .Latn: "de"], type: .consonant),
            .init([.Hira: "ど", .Kana: "ド", .Latn: "do"], type: .consonant),
            .init([.Hira: "ぢゃ", .Kana: "ヂャ", .Latn: "dya"], type: .consonant),
            .init([.Hira: "ぢゅ", .Kana: "ヂュ", .Latn: "dyu"], type: .consonant),
            .init([.Hira: "ぢょ", .Kana: "ヂョ", .Latn: "dyo"], type: .consonant),
            
            .init([.Hira: "ば", .Kana: "バ", .Latn: "ba"], type: .consonant),
            .init([.Hira: "び", .Kana: "ビ", .Latn: "bi"], type: .consonant),
            .init([.Hira: "ぶ", .Kana: "ブ", .Latn: "bu"], type: .consonant),
            .init([.Hira: "べ", .Kana: "ベ", .Latn: "be"], type: .consonant),
            .init([.Hira: "ぼ", .Kana: "ボ", .Latn: "bo"], type: .consonant),
            .init([.Hira: "びゃ", .Kana: "ビャ", .Latn: "bya"], type: .consonant),
            .init([.Hira: "びゅ", .Kana: "ビュ", .Latn: "byu"], type: .consonant),
            .init([.Hira: "びょ", .Kana: "ビョ", .Latn: "byo"], type: .consonant),
            
            .init([.Hira: "ぱ", .Kana: "パ", .Latn: "pa"], type: .consonant),
            .init([.Hira: "ぴ", .Kana: "ピ", .Latn: "pi"], type: .consonant),
            .init([.Hira: "ぷ", .Kana: "プ", .Latn: "pu"], type: .consonant),
            .init([.Hira: "ぺ", .Kana: "ペ", .Latn: "pe"], type: .consonant),
            .init([.Hira: "ぽ", .Kana: "ポ", .Latn: "po"], type: .consonant),
            .init([.Hira: "ぴゃ", .Kana: "ピャ", .Latn: "pya"], type: .consonant),
            .init([.Hira: "ぴゅ", .Kana: "ピュ", .Latn: "pyu"], type: .consonant),
            .init([.Hira: "ぴょ", .Kana: "ピョ", .Latn: "pyo"], type: .consonant),
            
            .init([.Hira: "くゎ", .Kana: "クヮ", .Latn: "kwa"], type: .consonant),
            
            .init([.Hira: "ぐゎ", .Kana: "グヮ", .Latn: "gwa"], type: .consonant),
            
            
            
            .init([.Hira: "ー", .Kana: "ー", .Latn: "̂"]),
            
            .init([.Hira: "っ", .Kana: "ッ", .Latn: "t"], postfixContext: .other),
            .init([.Hira: "っ", .Kana: "ッ", .Latn: "t'"], postfixContext: .nonOther),
        ]
        
        scriptTable += scriptTable.compactMap {
            guard $0.type == .consonant else {
                return nil
            }
            
            return .init([
                .Hira: "っ\($0.scriptElements[.Hira]!)",
                .Kana: "ッ\($0.scriptElements[.Kana]!)",
                .Latn: "\($0.scriptElements[.Latn]!.first!)\($0.scriptElements[.Latn]!)",
            ], type: .consonant)
        }
        
        scriptTable += scriptTable.compactMap {
            guard $0.type == .vowel || $0.scriptElements[.Latn]?.first == "y" else {
                return nil
            }
            
            return .init([
                .Hira: "ん\($0.scriptElements[.Hira]!)",
                .Kana: "ン\($0.scriptElements[.Kana]!)",
                .Latn: "n'\($0.scriptElements[.Latn]!)",
            ], type: .consonant)
        }
        
        return scriptTable
    }
}
