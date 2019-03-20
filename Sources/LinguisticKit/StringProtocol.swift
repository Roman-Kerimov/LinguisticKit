//
//  StringProtocol.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-03-20.
//

private enum Case {
    case lowercased, uppercased, capitalized, uppercasedOrCapitalized, uncased
}

public extension StringProtocol {
    
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
    
    func translating(from sourceScript: Script, to targetScript: Script, withTable scriptTable: ScriptTable) -> String {
        
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
    
    func translating(from sourceScript: Script, to targetScript: Script, withTable scriptTable: ScriptTable, withEscapeSequence escapeSequence: String) -> String {
        
        return self.components(separatedBy: escapeSequence + escapeSequence).map({ (segment) -> String in
            
            return segment.components(separatedBy: escapeSequence).enumerated().map ({ (offset, element) -> String in
                
                let escapedLetters = offset == 0 ? .init() : element.prefix(while: {$0.isLetter} ).description
                let escapedPrefix = offset == 0 ? .init() : escapedLetters.isEmpty ? escapeSequence : escapedLetters
                return escapedPrefix + element.dropFirst(escapedLetters.count).translating(from: sourceScript, to: targetScript, withTable: scriptTable)
                
            }).joined()
        }).joined(separator: escapeSequence)
    }
}
