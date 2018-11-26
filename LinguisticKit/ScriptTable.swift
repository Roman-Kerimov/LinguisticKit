//
//  ScriptTable.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2018-11-18.
//

public struct ScriptTable {
    internal typealias RAWScriptTableCell = [Script: String]
    internal typealias RAWScriptTable = [RAWScriptTableCell]
    internal typealias RAWScriptDictionary = [String: RAWScriptTableCell]
    
    
    private let table: RAWScriptTable
    
    private lazy var scriptSet = table.map {$0.keys} .reduce(Set.init(Script.allCases)) {$0.intersection($1)}
    private lazy var a: [Script: RAWScriptDictionary] = Dictionary.init(
        uniqueKeysWithValues: scriptSet.map { (script) -> (Script, RAWScriptDictionary) in
            return (script, RAWScriptDictionary.init(uniqueKeysWithValues: table.map { ($0[script]!, $0) } ))
        }
    )
    
    private init(makeScriptTable: () -> RAWScriptTable) {
        table = makeScriptTable()
    }
    
    internal mutating func maxElementLength(forScript script: Script) -> Int {
        
        return a[script]?.keys.map {$0.count} .max() ?? 0
    }
    
    internal mutating func element(of targetScript: Script, from sourceElement: String, of sourceScript: Script) -> String? {
        
        
        guard a.keys.contains(sourceScript) else {
            fatalError("The script table donʼt support \(String.init(describing: sourceScript)) source script!")
        }
        
        guard a.keys.contains(targetScript) else {
            fatalError("The script table donʼt support \(String.init(describing: targetScript)) target script!")
        }
        
        guard let element = a[sourceScript]?[sourceElement]?[targetScript] else {
            return nil
        }
        
        return element
    }
    
}

public extension String {
    
    private enum Case {
        case lowercased, uppercased, capitalized, uppercasedOrCapitalized, uncased
    }
    
    private var `case`: Case {
        guard let firstCharacter = first else {
            return .uncased
        }
        
        if firstCharacter.isCased == false {
            return .uncased
        }
        else if firstCharacter.isUppercase && count == 1 {
            return .uppercasedOrCapitalized
        }
        else if filter({$0.isCased}).map({$0.isLowercase}).contains(false) == false {
            return .lowercased
        }
        else if map({$0.isLowercase}).contains(true) {
            return .capitalized
        }
        else if filter({$0.isCased}).map({$0.isUppercase}).contains(false) == false {
            return .uppercased
        }
        else {
            return .uncased
        }
    }
    
    public func translating(from sourceScript: Script, to targetScript: Script, withTable scriptTable: ScriptTable) -> String {
        
        var scriptTable = scriptTable
        
        var index = 0
        var elements: [(source: String, target: String)] = .init()
        
        while index < self.count {
            var sourceElementLength = scriptTable.maxElementLength(forScript: sourceScript)
            
            while true {
                
                let sourceElement: String = .init(self.dropFirst(index).prefix(sourceElementLength))
                
                if let targetElement = scriptTable.element(of: targetScript, from: sourceElement.lowercased(), of: sourceScript) {
                    elements.append((source: sourceElement, target: targetElement))
                    break
                }
                else if sourceElementLength == 1 {
                    elements.append((source: sourceElement, target: sourceElement))
                    break
                }
                
                sourceElementLength -= 1
            }
            
            index += sourceElementLength
        }
        
        var elementCases: [Case] = elements.map {$0.source.case}
        
        for (index, elementCase) in elementCases.enumerated() {
            guard elementCase == .uppercasedOrCapitalized else {
                continue
            }
            
            let enumeratedElementCasesBeforeAndAfter = Array.init(elementCases.enumerated()).split {$0.offset == index}
            
            guard let elementBefore = enumeratedElementCasesBeforeAndAfter.first?.last?.element else {
                continue
            }
            
            guard let elementAfter = enumeratedElementCasesBeforeAndAfter.last?.first?.element else {
                continue
            }
            
            let newElementCase: Case
            
            switch (elementBefore, elementAfter) {
                
            case (_, .uncased):
                continue
                
            case (_, .lowercased):
                newElementCase = .capitalized
                
            default:
                newElementCase = .uppercased
            }
            
            elementCases[index] = newElementCase
        }

        for (index, _) in elementCases.enumerated().filter({$0.element == .uppercasedOrCapitalized}) {

            let casedElelementsBeforeAndAfter = elements.enumerated().filter({[.uppercasedOrCapitalized, .uncased].contains($0.element.source.case) == false}) .split {$0.offset == index}

            let contextCases = [casedElelementsBeforeAndAfter.first?.last?.element.source.case, casedElelementsBeforeAndAfter.last?.first?.element.source.case]

            if contextCases.compactMap({$0}).contains(.uppercased) {
                elementCases[index] = .uppercased
            }
            else {
                elementCases[index] = .capitalized
            }
        }
        
        for (index, elementCase) in elementCases.enumerated() {
            switch elementCase {
                
            case .lowercased:
                elements[index].target = elements[index].target.lowercased()
                
            case .uppercased:
                elements[index].target = elements[index].target.uppercased()
                
            case .capitalized:
                elements[index].target = elements[index].target.capitalized
                
            case .uppercasedOrCapitalized, .uncased:
                continue
            }
        }
        
        return elements.map {$0.target} .joined()
    }
}

public extension ScriptTable {
    
    public static let ru: ScriptTable = .init { () -> ScriptTable.RAWScriptTable in
        
        let baseVowelLetters: RAWScriptTable = [
            [.Latn: "a", .Cyrl: "а"],
            [.Latn: "e", .Cyrl: "э"],
            [.Latn: "i", .Cyrl: "и"],
            [.Latn: "o", .Cyrl: "о"],
            [.Latn: "u", .Cyrl: "у"],
        ]
        
        let otherVowelLetters: RAWScriptTable = [
            [.Latn: "ya", .Cyrl: "я"],
            [.Latn: "ye", .Cyrl: "е"],
            [.Latn: "yi", .Cyrl: "ы"],
            [.Latn: "yo", .Cyrl: "ё"],
            [.Latn: "yu", .Cyrl: "ю"],
        ]
        
        let consonantLetters: RAWScriptTable = [
            [.Latn: "b", .Cyrl: "б"],
            [.Latn: "c", .Cyrl: "ц"],
            [.Latn: "ch", .Cyrl: "ч"],
            [.Latn: "d", .Cyrl: "д"],
            [.Latn: "dh", .Cyrl: "ҙ"],
            [.Latn: "f", .Cyrl: "ф"],
            [.Latn: "g", .Cyrl: "г"],
            [.Latn: "gh", .Cyrl: "ғ"],
            [.Latn: "h", .Cyrl: "һ"],
            [.Latn: "j", .Cyrl: "й"],
            [.Latn: "k", .Cyrl: "к"],
            [.Latn: "l", .Cyrl: "л"],
            [.Latn: "m", .Cyrl: "м"],
            [.Latn: "n", .Cyrl: "н"],
            [.Latn: "p", .Cyrl: "п"],
            [.Latn: "q", .Cyrl: "қ"],
            [.Latn: "r", .Cyrl: "р"],
            [.Latn: "s", .Cyrl: "с"],
            [.Latn: "sh", .Cyrl: "ш"],
            [.Latn: "sjh", .Cyrl: "щ"],
            [.Latn: "t", .Cyrl: "т"],
            [.Latn: "th", .Cyrl: "ѳ"],
            [.Latn: "v", .Cyrl: "в"],
            [.Latn: "w", .Cyrl: "ў"],
            [.Latn: "x", .Cyrl: "ѯ"],
            [.Latn: "xh", .Cyrl: "х"],
            [.Latn: "z", .Cyrl: "з"],
            [.Latn: "zh", .Cyrl: "ж"],
            [.Latn: "zjh", .Cyrl: "җ"],
        ]
        
        var vowelElements = baseVowelLetters + otherVowelLetters
        
        vowelElements += baseVowelLetters.map {[.Latn: "yʼ" + $0[.Latn]! , .Cyrl: "ъ" + $0[.Cyrl]!]}
        
        vowelElements += consonantLetters.map {[.Latn: $0[.Latn]! + "e", .Cyrl: $0[.Cyrl]! + "е"]}
        vowelElements += consonantLetters.map {[.Latn: $0[.Latn]! + "ye", .Cyrl: $0[.Cyrl]! + "э"]}
        
        vowelElements += vowelElements.map {[.Latn: $0[.Latn]! + "́", .Cyrl: $0[.Cyrl]! + "́"]}
        vowelElements += vowelElements.map {[.Latn: $0[.Latn]! + "̀", .Cyrl: $0[.Cyrl]! + "̀"]}
        
        
        var elements = vowelElements + consonantLetters
        
        elements.append([.Latn: "y", .Cyrl: "ъ"])
        elements += consonantLetters.map {[.Latn: $0[.Latn]! + "j", .Cyrl: $0[.Cyrl]! + "ь"]}
        
        
        return elements
    }
}
