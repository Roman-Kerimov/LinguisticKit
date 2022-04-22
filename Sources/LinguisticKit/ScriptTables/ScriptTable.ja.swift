//
//  ScriptTable.ja.swift
//  
//
//  Created by Roman Kerimov on 2020-07-20.
//

public extension ScriptTable {
    static let ja = ScriptTable(languageCode: "ja", defaultScript: .Hrkt) {
        var scriptTable = RAWScriptTable()
            .cell([.Hira: "あ", .Kana: "ア", .Latn: "a"], type: .vowel)
            .cell([.Hira: "い", .Kana: "イ", .Latn: "i"], type: .vowel)
            .cell([.Hira: "う", .Kana: "ウ", .Latn: "u"], type: .vowel)
            .cell([.Hira: "え", .Kana: "エ", .Latn: "e"], type: .vowel)
            .cell([.Hira: "お", .Kana: "オ", .Latn: "o"], type: .vowel)
            
            .cell([.Hira: "か", .Kana: "カ", .Latn: "ka"], type: .consonant)
            .cell([.Hira: "き", .Kana: "キ", .Latn: "ki"], type: .consonant)
            .cell([.Hira: "く", .Kana: "ク", .Latn: "ku"], type: .consonant)
            .cell([.Hira: "け", .Kana: "ケ", .Latn: "ke"], type: .consonant)
            .cell([.Hira: "こ", .Kana: "コ", .Latn: "ko"], type: .consonant)
            .cell([.Hira: "きゃ", .Kana: "キャ", .Latn: "kya"], type: .consonant)
            .cell([.Hira: "きゅ", .Kana: "キュ", .Latn: "kyu"], type: .consonant)
            .cell([.Hira: "きょ", .Kana: "キョ", .Latn: "kyo"], type: .consonant)
            
            .cell([.Hira: "さ", .Kana: "サ", .Latn: "sa"], type: .consonant)
            .cell([.Hira: "し", .Kana: "シ", .Latn: "si"], type: .consonant)
            .cell([.Hira: "す", .Kana: "ス", .Latn: "su"], type: .consonant)
            .cell([.Hira: "せ", .Kana: "セ", .Latn: "se"], type: .consonant)
            .cell([.Hira: "そ", .Kana: "ソ", .Latn: "so"], type: .consonant)
            .cell([.Hira: "しゃ", .Kana: "シャ", .Latn: "sya"], type: .consonant)
            .cell([.Hira: "しゅ", .Kana: "シュ", .Latn: "syu"], type: .consonant)
            .cell([.Hira: "しょ", .Kana: "ショ", .Latn: "syo"], type: .consonant)
            
            .cell([.Hira: "た", .Kana: "タ", .Latn: "ta"], type: .consonant)
            .cell([.Hira: "ち", .Kana: "チ", .Latn: "ti"], type: .consonant)
            .cell([.Hira: "つ", .Kana: "ツ", .Latn: "tu"], type: .consonant)
            .cell([.Hira: "て", .Kana: "テ", .Latn: "te"], type: .consonant)
            .cell([.Hira: "と", .Kana: "ト", .Latn: "to"], type: .consonant)
            .cell([.Hira: "ちゃ", .Kana: "チャ", .Latn: "tya"], type: .consonant)
            .cell([.Hira: "ちゅ", .Kana: "チュ", .Latn: "tyu"], type: .consonant)
            .cell([.Hira: "ちょ", .Kana: "チョ", .Latn: "tyo"], type: .consonant)
            
            .cell([.Hira: "な", .Kana: "ナ", .Latn: "na"], type: .consonant)
            .cell([.Hira: "に", .Kana: "ニ", .Latn: "ni"], type: .consonant)
            .cell([.Hira: "ぬ", .Kana: "ヌ", .Latn: "nu"], type: .consonant)
            .cell([.Hira: "ね", .Kana: "ネ", .Latn: "ne"], type: .consonant)
            .cell([.Hira: "の", .Kana: "ノ", .Latn: "no"], type: .consonant)
            .cell([.Hira: "にゃ", .Kana: "ニャ", .Latn: "nya"], type: .consonant)
            .cell([.Hira: "にゅ", .Kana: "ニュ", .Latn: "nyu"], type: .consonant)
            .cell([.Hira: "にょ", .Kana: "ニョ", .Latn: "nyo"], type: .consonant)
            
            .cell([.Hira: "は", .Kana: "ハ", .Latn: "ha"], type: .consonant)
            .cell([.Hira: "ひ", .Kana: "ヒ", .Latn: "hi"], type: .consonant)
            .cell([.Hira: "ふ", .Kana: "フ", .Latn: "hu"], type: .consonant)
            .cell([.Hira: "へ", .Kana: "ヘ", .Latn: "he"], type: .consonant)
            .cell([.Hira: "ほ", .Kana: "ホ", .Latn: "ho"], type: .consonant)
            .cell([.Hira: "ひゃ", .Kana: "ヒャ", .Latn: "hya"], type: .consonant)
            .cell([.Hira: "ひゅ", .Kana: "ヒュ", .Latn: "hyu"], type: .consonant)
            .cell([.Hira: "ひょ", .Kana: "ヒョ", .Latn: "hyo"], type: .consonant)
            
            .cell([.Hira: "ま", .Kana: "マ", .Latn: "ma"], type: .consonant)
            .cell([.Hira: "み", .Kana: "ミ", .Latn: "mi"], type: .consonant)
            .cell([.Hira: "む", .Kana: "ム", .Latn: "mu"], type: .consonant)
            .cell([.Hira: "め", .Kana: "メ", .Latn: "me"], type: .consonant)
            .cell([.Hira: "も", .Kana: "モ", .Latn: "mo"], type: .consonant)
            .cell([.Hira: "みゃ", .Kana: "ミャ", .Latn: "mya"], type: .consonant)
            .cell([.Hira: "みゅ", .Kana: "ミュ", .Latn: "myu"], type: .consonant)
            .cell([.Hira: "みょ", .Kana: "ミョ", .Latn: "myo"], type: .consonant)
            
            .cell([.Hira: "や", .Kana: "ヤ", .Latn: "ya"], type: .consonant)
            .cell([.Hira: "ゆ", .Kana: "ユ", .Latn: "yu"], type: .consonant)
            .cell([.Hira: "よ", .Kana: "ヨ", .Latn: "yo"], type: .consonant)
            
            .cell([.Hira: "ら", .Kana: "ラ", .Latn: "ra"], type: .consonant)
            .cell([.Hira: "り", .Kana: "リ", .Latn: "ri"], type: .consonant)
            .cell([.Hira: "る", .Kana: "ル", .Latn: "ru"], type: .consonant)
            .cell([.Hira: "れ", .Kana: "レ", .Latn: "re"], type: .consonant)
            .cell([.Hira: "ろ", .Kana: "ロ", .Latn: "ro"], type: .consonant)
            .cell([.Hira: "りゃ", .Kana: "リャ", .Latn: "rya"], type: .consonant)
            .cell([.Hira: "りゅ", .Kana: "リュ", .Latn: "ryu"], type: .consonant)
            .cell([.Hira: "りょ", .Kana: "リョ", .Latn: "ryo"], type: .consonant)
            
            .cell([.Hira: "わ", .Kana: "ワ", .Latn: "wa"], type: .consonant)
            .cell([.Hira: "ゐ", .Kana: "ヰ", .Latn: "wi"], type: .consonant)
            .cell([.Hira: "ゑ", .Kana: "ヱ", .Latn: "we"], type: .consonant)
            .cell([.Hira: "を", .Kana: "ヲ", .Latn: "wo"], type: .consonant)
            
            .cell([.Hira: "ん", .Kana: "ン", .Latn: "n"], type: .consonant)
            
            .cell([.Hira: "が", .Kana: "ガ", .Latn: "ga"], type: .consonant)
            .cell([.Hira: "ぎ", .Kana: "ギ", .Latn: "gi"], type: .consonant)
            .cell([.Hira: "ぐ", .Kana: "グ", .Latn: "gu"], type: .consonant)
            .cell([.Hira: "げ", .Kana: "ゲ", .Latn: "ge"], type: .consonant)
            .cell([.Hira: "ご", .Kana: "ゴ", .Latn: "go"], type: .consonant)
            .cell([.Hira: "ぎゃ", .Kana: "ギャ", .Latn: "gya"], type: .consonant)
            .cell([.Hira: "ぎゅ", .Kana: "ギュ", .Latn: "gyu"], type: .consonant)
            .cell([.Hira: "ぎょ", .Kana: "ギョ", .Latn: "gyo"], type: .consonant)
            
            .cell([.Hira: "ざ", .Kana: "ザ", .Latn: "za"], type: .consonant)
            .cell([.Hira: "じ", .Kana: "ジ", .Latn: "zi"], type: .consonant)
            .cell([.Hira: "ず", .Kana: "ズ", .Latn: "zu"], type: .consonant)
            .cell([.Hira: "ぜ", .Kana: "ゼ", .Latn: "ze"], type: .consonant)
            .cell([.Hira: "ぞ", .Kana: "ゾ", .Latn: "zo"], type: .consonant)
            .cell([.Hira: "じゃ", .Kana: "ジャ", .Latn: "zya"], type: .consonant)
            .cell([.Hira: "じゅ", .Kana: "ジュ", .Latn: "zyu"], type: .consonant)
            .cell([.Hira: "じょ", .Kana: "ジョ", .Latn: "zyo"], type: .consonant)
            
            .cell([.Hira: "だ", .Kana: "ダ", .Latn: "da"], type: .consonant)
            .cell([.Hira: "ぢ", .Kana: "ヂ", .Latn: "di"], type: .consonant)
            .cell([.Hira: "づ", .Kana: "ヅ", .Latn: "du"], type: .consonant)
            .cell([.Hira: "で", .Kana: "デ", .Latn: "de"], type: .consonant)
            .cell([.Hira: "ど", .Kana: "ド", .Latn: "do"], type: .consonant)
            .cell([.Hira: "ぢゃ", .Kana: "ヂャ", .Latn: "dya"], type: .consonant)
            .cell([.Hira: "ぢゅ", .Kana: "ヂュ", .Latn: "dyu"], type: .consonant)
            .cell([.Hira: "ぢょ", .Kana: "ヂョ", .Latn: "dyo"], type: .consonant)
            
            .cell([.Hira: "ば", .Kana: "バ", .Latn: "ba"], type: .consonant)
            .cell([.Hira: "び", .Kana: "ビ", .Latn: "bi"], type: .consonant)
            .cell([.Hira: "ぶ", .Kana: "ブ", .Latn: "bu"], type: .consonant)
            .cell([.Hira: "べ", .Kana: "ベ", .Latn: "be"], type: .consonant)
            .cell([.Hira: "ぼ", .Kana: "ボ", .Latn: "bo"], type: .consonant)
            .cell([.Hira: "びゃ", .Kana: "ビャ", .Latn: "bya"], type: .consonant)
            .cell([.Hira: "びゅ", .Kana: "ビュ", .Latn: "byu"], type: .consonant)
            .cell([.Hira: "びょ", .Kana: "ビョ", .Latn: "byo"], type: .consonant)
            
            .cell([.Hira: "ぱ", .Kana: "パ", .Latn: "pa"], type: .consonant)
            .cell([.Hira: "ぴ", .Kana: "ピ", .Latn: "pi"], type: .consonant)
            .cell([.Hira: "ぷ", .Kana: "プ", .Latn: "pu"], type: .consonant)
            .cell([.Hira: "ぺ", .Kana: "ペ", .Latn: "pe"], type: .consonant)
            .cell([.Hira: "ぽ", .Kana: "ポ", .Latn: "po"], type: .consonant)
            .cell([.Hira: "ぴゃ", .Kana: "ピャ", .Latn: "pya"], type: .consonant)
            .cell([.Hira: "ぴゅ", .Kana: "ピュ", .Latn: "pyu"], type: .consonant)
            .cell([.Hira: "ぴょ", .Kana: "ピョ", .Latn: "pyo"], type: .consonant)
            
            
            .cell([.Hira: "きぇ", .Kana: "キェ", .Latn: "kye"], type: .consonant)
            
            .cell([.Hira: "くゎ", .Kana: "クヮ", .Latn: "kwa"], type: .consonant)
            .cell([.Hira: "くぃ", .Kana: "クィ", .Latn: "kwi"], type: .consonant)
            .cell([.Hira: "くぇ", .Kana: "クェ", .Latn: "kwe"], type: .consonant)
            .cell([.Hira: "くぉ", .Kana: "クォ", .Latn: "kwo"], type: .consonant)
            
            .cell([.Hira: "ぎぇ", .Kana: "ギェ", .Latn: "gye"], type: .consonant)
            
            .cell([.Hira: "ぐゎ", .Kana: "グヮ", .Latn: "gwa"], type: .consonant)
            .cell([.Hira: "ぐぃ", .Kana: "グィ", .Latn: "gwi"], type: .consonant)
            .cell([.Hira: "ぐぇ", .Kana: "グェ", .Latn: "gwe"], type: .consonant)
            .cell([.Hira: "ぐぉ", .Kana: "グォ", .Latn: "gwo"], type: .consonant)
            
            .cell([.Hira: "すぃ", .Kana: "スィ", .Latn: "sxi"], type: .consonant)
            .cell([.Hira: "しぇ", .Kana: "シェ", .Latn: "she"], type: .consonant)
            
            .cell([.Hira: "ずぃ", .Kana: "ズィ", .Latn: "zxi"], type: .consonant)
            .cell([.Hira: "じぇ", .Kana: "ジェ", .Latn: "je"], type: .consonant)
            
            .cell([.Hira: "てぃ", .Kana: "ティ", .Latn: "txi"], type: .consonant)
            .cell([.Hira: "とぅ", .Kana: "トゥ", .Latn: "txu"], type: .consonant)
            .cell([.Hira: "てゅ", .Kana: "テュ", .Latn: "txyu"], type: .consonant)
            .cell([.Hira: "ちぇ", .Kana: "チェ", .Latn: "che"], type: .consonant)
            
            .cell([.Hira: "つぁ", .Kana: "ツァ", .Latn: "tsa"], type: .consonant)
            .cell([.Hira: "つぃ", .Kana: "ツィ", .Latn: "tsi"], type: .consonant)
            .cell([.Hira: "つぇ", .Kana: "ツェ", .Latn: "tse"], type: .consonant)
            .cell([.Hira: "つぉ", .Kana: "ツォ", .Latn: "tso"], type: .consonant)
            
            .cell([.Hira: "でぃ", .Kana: "ディ", .Latn: "dxi"], type: .consonant)
            .cell([.Hira: "どぅ", .Kana: "ドゥ", .Latn: "dxu"], type: .consonant)
            .cell([.Hira: "でゅ", .Kana: "デュ", .Latn: "dxyu"], type: .consonant)
            
            .cell([.Hira: "にぇ", .Kana: "ニェ", .Latn: "nye"], type: .consonant)
            
            .cell([.Hira: "ほぅ", .Kana: "ホゥ", .Latn: "hxu"], type: .consonant)
            .cell([.Hira: "ヒぇ", .Kana: "ヒェ", .Latn: "hye"], type: .consonant)
            
            .cell([.Hira: "ふぁ", .Kana: "ファ", .Latn: "fa"], type: .consonant)
            .cell([.Hira: "ふぃ", .Kana: "フィ", .Latn: "fi"], type: .consonant)
            .cell([.Hira: "ふぇ", .Kana: "フェ", .Latn: "fe"], type: .consonant)
            .cell([.Hira: "ふぉ", .Kana: "フォ", .Latn: "fo"], type: .consonant)
            .cell([.Hira: "ふゃ", .Kana: "フャ", .Latn: "fya"], type: .consonant)
            .cell([.Hira: "ふゅ", .Kana: "フュ", .Latn: "fyu"], type: .consonant)
            .cell([.Hira: "ふぃぇ", .Kana: "フィェ", .Latn: "fye"], type: .consonant)
            .cell([.Hira: "ふょ", .Kana: "フョ", .Latn: "fyo"], type: .consonant)
            
            .cell([.Hira: "びぇ", .Kana: "ビェ", .Latn: "bye"], type: .consonant)
            
            .cell([.Hira: "ぴぇ", .Kana: "ピェ", .Latn: "pye"], type: .consonant)
            
            .cell([.Hira: "みぇ", .Kana: "ミェ", .Latn: "mye"], type: .consonant)
            
            .cell([.Hira: "いぃ", .Kana: "イィ", .Latn: "yi"], type: .consonant)
            .cell([.Hira: "いぇ", .Kana: "イェ", .Latn: "ye"], type: .consonant)
            
            .cell([.Hira: "りぇ", .Kana: "リェ", .Latn: "rye"], type: .consonant)
            
            .cell([.Hira: "うぃ", .Kana: "ウィ", .Latn: "wxi"], type: .consonant)
            .cell([.Hira: "うぅ", .Kana: "ウゥ", .Latn: "wu"], type: .consonant)
            .cell([.Hira: "うぇ", .Kana: "ウェ", .Latn: "wxe"], type: .consonant)
            .cell([.Hira: "うぉ", .Kana: "ウォ", .Latn: "wxo"], type: .consonant)
            .cell([.Hira: "うゅ", .Kana: "ウュ", .Latn: "wyu"], type: .consonant)
            
            .cell([.Hira: "ゔぁ", .Kana: "ヴァ", .Latn: "va"], type: .consonant)
            .cell([.Hira: "ゔぃ", .Kana: "ヴィ", .Latn: "vi"], type: .consonant)
            .cell([.Hira: "ゔ", .Kana: "ヴ", .Latn: "vu"], type: .consonant)
            .cell([.Hira: "ゔぇ", .Kana: "ヴェ", .Latn: "ve"], type: .consonant)
            .cell([.Hira: "ゔぉ", .Kana: "ヴォ", .Latn: "vo"], type: .consonant)
            .cell([.Hira: "ゔゃ", .Kana: "ヴャ", .Latn: "vya"], type: .consonant)
            .cell([.Hira: "ゔゅ", .Kana: "ヴュ", .Latn: "vyu"], type: .consonant)
            .cell([.Hira: "ゔぃぇ", .Kana: "ヴィェ", .Latn: "vye"], type: .consonant)
            .cell([.Hira: "ゔょ", .Kana: "ヴョ", .Latn: "vyo"], type: .consonant)
            
            
            
            .cell([.Hira: "ー", .Kana: "ー", .Latn: "̂"])
            
            .cell([.Hira: "っ", .Kana: "ッ", .Latn: "t"], postfixContext: .other)
            .cell([.Hira: "っ", .Kana: "ッ", .Latn: "t'"], postfixContext: .nonOther)
        
        scriptTable += scriptTable.compactMap {
            $0.type == .consonant ? Cell([
                .Hira: "っ\($0.scriptElements[.Hira]!)",
                .Kana: "ッ\($0.scriptElements[.Kana]!)",
                .Latn: "\($0.scriptElements[.Latn]!.first!)\($0.scriptElements[.Latn]!)",
            ], type: .consonant) : nil
        }
        
        scriptTable += scriptTable.compactMap {
            $0.type == .vowel ||  ["y", "n"].contains($0.scriptElements[.Latn]!.first!) ? Cell([
                .Hira: "ん\($0.scriptElements[.Hira]!)",
                .Kana: "ン\($0.scriptElements[.Kana]!)",
                .Latn: "n'\($0.scriptElements[.Latn]!)",
            ], type: .consonant) : nil
        }
        
        var punctuationTable: RAWScriptTable =
            .cell([.Hrkt: "｛", .Latn: "{"])
            .cell([.Hrkt: "｝", .Latn: "}"])
            .cell([.Hrkt: "（", .Latn: "("])
            .cell([.Hrkt: "）", .Latn: ")"])
            .cell([.Hrkt: "［", .Latn: "["])
            .cell([.Hrkt: "］", .Latn: "]"])
        punctuationTable = punctuationTable // Fix for Swift 5.6
            .cell([.Hrkt: "、", .Latn: ","])
            .cell([.Hrkt: "。", .Latn: "."])
            .cell([.Hrkt: "・", .Latn: "·"])
            .cell([.Hrkt: "「", .Latn: "‹"])
            .cell([.Hrkt: "」", .Latn: "›"])
            .cell([.Hrkt: "『", .Latn: "«"])
            .cell([.Hrkt: "』", .Latn: "»"])
            .cell([.Hrkt: "　", .Latn: " "])
            .cell([.Hrkt: "〜", .Latn: "~"])
            .cell([.Hrkt: "：", .Latn: ":"])
            .cell([.Hrkt: "！", .Latn: "!"])
            .cell([.Hrkt: "？", .Latn: "?"])
        
        scriptTable += punctuationTable
            .map {
            Cell([
                .Hira: $0.scriptElements[.Hrkt]!,
                .Kana: $0.scriptElements[.Hrkt]!,
                .Latn: $0.scriptElements[.Latn]!,
            ])
        }
        
        return scriptTable
    }
}
