//
//  ScriptTable.ja.swift
//  
//
//  Created by Roman Kerimov on 2020-07-20.
//

public extension ScriptTable {
    static let ja = ScriptTable(languageCode: "ja", defaultScript: .Hrkt) {[
        .init([.Hira: "あ", .Kana: "ア", .Latn: "a"]),
        .init([.Hira: "い", .Kana: "イ", .Latn: "i"]),
        .init([.Hira: "う", .Kana: "ウ", .Latn: "u"]),
        .init([.Hira: "え", .Kana: "エ", .Latn: "e"]),
        .init([.Hira: "お", .Kana: "オ", .Latn: "o"]),
        
        .init([.Hira: "か", .Kana: "カ", .Latn: "ka"]),
        .init([.Hira: "き", .Kana: "キ", .Latn: "ki"]),
        .init([.Hira: "く", .Kana: "ク", .Latn: "ku"]),
        .init([.Hira: "け", .Kana: "ケ", .Latn: "ke"]),
        .init([.Hira: "こ", .Kana: "コ", .Latn: "ko"]),
        .init([.Hira: "きゃ", .Kana: "キャ", .Latn: "kya"]),
        .init([.Hira: "きゅ", .Kana: "キュ", .Latn: "kyu"]),
        .init([.Hira: "きょ", .Kana: "キョ", .Latn: "kyo"]),
        
        .init([.Hira: "さ", .Kana: "サ", .Latn: "sa"]),
        .init([.Hira: "し", .Kana: "シ", .Latn: "si"]),
        .init([.Hira: "す", .Kana: "ス", .Latn: "su"]),
        .init([.Hira: "せ", .Kana: "セ", .Latn: "se"]),
        .init([.Hira: "そ", .Kana: "ソ", .Latn: "so"]),
        .init([.Hira: "しゃ", .Kana: "シャ", .Latn: "sya"]),
        .init([.Hira: "しゅ", .Kana: "シュ", .Latn: "syu"]),
        .init([.Hira: "しょ", .Kana: "ショ", .Latn: "syo"]),
        
        .init([.Hira: "た", .Kana: "タ", .Latn: "ta"]),
        .init([.Hira: "ち", .Kana: "チ", .Latn: "ti"]),
        .init([.Hira: "つ", .Kana: "ツ", .Latn: "tu"]),
        .init([.Hira: "て", .Kana: "テ", .Latn: "te"]),
        .init([.Hira: "と", .Kana: "ト", .Latn: "to"]),
        .init([.Hira: "ちゃ", .Kana: "チャ", .Latn: "tya"]),
        .init([.Hira: "ちゅ", .Kana: "チュ", .Latn: "tyu"]),
        .init([.Hira: "ちょ", .Kana: "チョ", .Latn: "tyo"]),
        
        .init([.Hira: "な", .Kana: "ナ", .Latn: "na"]),
        .init([.Hira: "に", .Kana: "ニ", .Latn: "ni"]),
        .init([.Hira: "ぬ", .Kana: "ヌ", .Latn: "nu"]),
        .init([.Hira: "ね", .Kana: "ネ", .Latn: "ne"]),
        .init([.Hira: "の", .Kana: "ノ", .Latn: "no"]),
        .init([.Hira: "にゃ", .Kana: "ニャ", .Latn: "nya"]),
        .init([.Hira: "にゅ", .Kana: "ニュ", .Latn: "nyu"]),
        .init([.Hira: "にょ", .Kana: "ニョ", .Latn: "nyo"]),
        
        .init([.Hira: "は", .Kana: "ハ", .Latn: "ha"]),
        .init([.Hira: "ひ", .Kana: "ヒ", .Latn: "hi"]),
        .init([.Hira: "ふ", .Kana: "フ", .Latn: "hu"]),
        .init([.Hira: "へ", .Kana: "ヘ", .Latn: "he"]),
        .init([.Hira: "ほ", .Kana: "ホ", .Latn: "ho"]),
        .init([.Hira: "ひゃ", .Kana: "ヒャ", .Latn: "hya"]),
        .init([.Hira: "ひゅ", .Kana: "ヒュ", .Latn: "hyu"]),
        .init([.Hira: "ひょ", .Kana: "ヒョ", .Latn: "hyo"]),
        
        .init([.Hira: "ま", .Kana: "マ", .Latn: "ma"]),
        .init([.Hira: "み", .Kana: "ミ", .Latn: "mi"]),
        .init([.Hira: "む", .Kana: "ム", .Latn: "mu"]),
        .init([.Hira: "め", .Kana: "メ", .Latn: "me"]),
        .init([.Hira: "も", .Kana: "モ", .Latn: "mo"]),
        .init([.Hira: "みゃ", .Kana: "ミャ", .Latn: "mya"]),
        .init([.Hira: "みゅ", .Kana: "ミュ", .Latn: "myu"]),
        .init([.Hira: "みょ", .Kana: "ミョ", .Latn: "myo"]),
        
        .init([.Hira: "や", .Kana: "ヤ", .Latn: "ya"]),
        .init([.Hira: "ゆ", .Kana: "ユ", .Latn: "yu"]),
        .init([.Hira: "よ", .Kana: "ヨ", .Latn: "yo"]),
        
        .init([.Hira: "ら", .Kana: "ラ", .Latn: "ra"]),
        .init([.Hira: "り", .Kana: "リ", .Latn: "ri"]),
        .init([.Hira: "る", .Kana: "ル", .Latn: "ru"]),
        .init([.Hira: "れ", .Kana: "レ", .Latn: "re"]),
        .init([.Hira: "ろ", .Kana: "ロ", .Latn: "ro"]),
        .init([.Hira: "りゃ", .Kana: "リャ", .Latn: "rya"]),
        .init([.Hira: "りゅ", .Kana: "リュ", .Latn: "ryu"]),
        .init([.Hira: "りょ", .Kana: "リョ", .Latn: "ryo"]),
        
        .init([.Hira: "わ", .Kana: "ワ", .Latn: "wa"]),
        .init([.Hira: "ゐ", .Kana: "ヰ", .Latn: "wi"]),
        .init([.Hira: "ゑ", .Kana: "ヱ", .Latn: "we"]),
        .init([.Hira: "を", .Kana: "ヲ", .Latn: "wo"]),
        
        .init([.Hira: "ん", .Kana: "ン", .Latn: "n"]),
        
        .init([.Hira: "が", .Kana: "ガ", .Latn: "ga"]),
        .init([.Hira: "ぎ", .Kana: "ギ", .Latn: "gi"]),
        .init([.Hira: "ぐ", .Kana: "グ", .Latn: "gu"]),
        .init([.Hira: "げ", .Kana: "ゲ", .Latn: "ge"]),
        .init([.Hira: "ご", .Kana: "ゴ", .Latn: "go"]),
        .init([.Hira: "ぎゃ", .Kana: "ギャ", .Latn: "gya"]),
        .init([.Hira: "ぎゅ", .Kana: "ギュ", .Latn: "gyu"]),
        .init([.Hira: "ぎょ", .Kana: "ギョ", .Latn: "gyo"]),
        
        .init([.Hira: "ざ", .Kana: "ザ", .Latn: "za"]),
        .init([.Hira: "じ", .Kana: "ジ", .Latn: "zi"]),
        .init([.Hira: "ず", .Kana: "ズ", .Latn: "zu"]),
        .init([.Hira: "ぜ", .Kana: "ゼ", .Latn: "ze"]),
        .init([.Hira: "ぞ", .Kana: "ゾ", .Latn: "zo"]),
        .init([.Hira: "じゃ", .Kana: "ジャ", .Latn: "zya"]),
        .init([.Hira: "じゅ", .Kana: "ジュ", .Latn: "zyu"]),
        .init([.Hira: "じょ", .Kana: "ジョ", .Latn: "zyo"]),
        
        .init([.Hira: "だ", .Kana: "ダ", .Latn: "da"]),
        .init([.Hira: "ぢ", .Kana: "ヂ", .Latn: "di"]),
        .init([.Hira: "づ", .Kana: "ヅ", .Latn: "du"]),
        .init([.Hira: "で", .Kana: "デ", .Latn: "de"]),
        .init([.Hira: "ど", .Kana: "ド", .Latn: "do"]),
        .init([.Hira: "ぢゃ", .Kana: "ヂャ", .Latn: "dya"]),
        .init([.Hira: "ぢゅ", .Kana: "ヂュ", .Latn: "dyu"]),
        .init([.Hira: "ぢょ", .Kana: "ヂョ", .Latn: "dyo"]),
        
        .init([.Hira: "ば", .Kana: "バ", .Latn: "ba"]),
        .init([.Hira: "び", .Kana: "ビ", .Latn: "bi"]),
        .init([.Hira: "ぶ", .Kana: "ブ", .Latn: "bu"]),
        .init([.Hira: "べ", .Kana: "ベ", .Latn: "be"]),
        .init([.Hira: "ぼ", .Kana: "ボ", .Latn: "bo"]),
        .init([.Hira: "びゃ", .Kana: "ビャ", .Latn: "bya"]),
        .init([.Hira: "びゅ", .Kana: "ビュ", .Latn: "byu"]),
        .init([.Hira: "びょ", .Kana: "ビョ", .Latn: "byo"]),
        
        .init([.Hira: "ぱ", .Kana: "パ", .Latn: "pa"]),
        .init([.Hira: "ぴ", .Kana: "ピ", .Latn: "pi"]),
        .init([.Hira: "ぷ", .Kana: "プ", .Latn: "pu"]),
        .init([.Hira: "ぺ", .Kana: "ペ", .Latn: "pe"]),
        .init([.Hira: "ぽ", .Kana: "ポ", .Latn: "po"]),
        .init([.Hira: "ぴゃ", .Kana: "ピャ", .Latn: "pya"]),
        .init([.Hira: "ぴゅ", .Kana: "ピュ", .Latn: "pyu"]),
        .init([.Hira: "ぴょ", .Kana: "ピョ", .Latn: "pyo"]),
        
        .init([.Hira: "くゎ", .Kana: "クヮ", .Latn: "kwa"]),
        
        .init([.Hira: "ぐゎ", .Kana: "グヮ", .Latn: "gwa"]),
        
        
        
        .init([.Hira: "ー", .Kana: "ー", .Latn: "̂"]),
    ]}
}
