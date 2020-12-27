//
//  StringProtocol.swift
//  LinguisticKit
//
//  Created by Roman Kerimov on 2019-03-20.
//

import Foundation

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
        else if map({$0.isLowercase}).contains(true) || (!firstCharacter.isUppercase && !firstCharacter.isLowercase) {
            return .capitalized
        }
        else if filter({$0.isCased}).map({$0.isUppercase}).contains(false) == false {
            return .uppercased
        }
        else {
            return .uncased
        }
    }
    
    func applyingTransform(from sourceScript: Script, to targetScript: Script, withTable scriptTable: ScriptTable) -> String? {
        guard scriptTable.scripts.contains(sourceScript) && scriptTable.scripts.contains(targetScript) else {
            return nil
        }
        
        let sourceLocale = scriptTable.locale(script: sourceScript)
        let targetLocale = scriptTable.locale(script: targetScript)
        
        var index = 0
        var elements: [(source: String, target: String)] = .init()
        
        while index < self.count {
            var sourceElementLength = scriptTable.maxElementLength(forScript: sourceScript)
            
            while true {
                
                let sourceElement: String = .init(self.dropFirst(index).prefix(sourceElementLength))
                
                if let targetElement = scriptTable.element(
                    of: targetScript,
                    from: sourceElement.lowercased(with: sourceLocale),
                    of: sourceScript,
                    prefixElement: elements.last?.source ?? "",
                    postfixString: index + sourceElementLength == self.count
                        ? ""
                        : self.dropFirst(index + sourceElementLength).description
                ) {
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
        
        elementCases.enumerated().split { ![.uppercasedOrCapitalized, .uppercased].contains($0.element) } .forEach { sequence in
            guard sequence.count > 1 else {
                return
            }
            
            sequence.forEach {elementCases[$0.offset] = .uppercased}
        }

        for (index, _) in elementCases.enumerated().filter({$0.element == .uppercasedOrCapitalized}) {

            let casedElelementCasesBeforeAndAfter = elementCases.enumerated().filter({![.uppercasedOrCapitalized, .uncased].contains($0.element)}) .split {$0.offset == index}

            let contextCases = [casedElelementCasesBeforeAndAfter.first?.last?.element, casedElelementCasesBeforeAndAfter.last?.first?.element]

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
                elements[index].target = elements[index].target.lowercased(with: targetLocale)
                
            case .uppercased:
                elements[index].target = elements[index].target.uppercased(with: targetLocale)
                
            case .capitalized:
                elements[index].target = elements[index].target.capitalized(with: targetLocale)
                
            case .uppercasedOrCapitalized, .uncased:
                continue
            }
        }
        
        return elements.map {$0.target} .joined()
    }
    
    func applyingTransform(from sourceScript: Script, to targetScript: Script, withTable scriptTable: ScriptTable, withEscapeSequence escapeSequence: String) -> String? {
        
        guard scriptTable.scripts.contains(sourceScript) && scriptTable.scripts.contains(targetScript) else {
            return nil
        }
        
        return self.components(separatedBy: escapeSequence + escapeSequence).map({ (segment) -> String in
            
            return segment.components(separatedBy: escapeSequence).enumerated().map ({ (offset, element) -> String in
                
                let escapedLetters = offset == 0 ? .init() : element.prefix(while: {$0.isLetter} ).description
                let escapedPrefix = offset == 0 ? .init() : escapedLetters.isEmpty ? escapeSequence : escapedLetters
                return escapedPrefix + element.dropFirst(escapedLetters.count).applyingTransform(from: sourceScript, to: targetScript, withTable: scriptTable)!
                
            }).joined()
        }).joined(separator: escapeSequence)
    }
    
    func transformationByTargetScriptCode() -> (sourceString: String, targetString: String)? {
        
        var string: String
        
        let constraint: String
        var constraintSet: CharacterSet
        
        if let character = self.last, CharacterSet.whitespaces.contains(character.unicodeScalars.first!) {
            constraint = character.description
            constraintSet = .whitespacesAndNewlines
            string = String(self.dropLast())
        }
        else {
            constraint = ""
            constraintSet = .newlines
            string = .init(self)
        }
        
        let scriptTransformationTargetCode = string.components(separatedBy: .whitespacesAndNewlines).last ?? .init()
        
        guard let scriptTransformationTarget = scriptTransformationTargetCodes[scriptTransformationTargetCode] else {
            return nil
        }
        
        string = string.dropLast(scriptTransformationTargetCode.count).description
        
        let scriptTransformationSeparator = string.components(separatedBy: CharacterSet.whitespacesAndNewlines.inverted).last ?? .init()
        
        if scriptTransformationSeparator.unicodeScalars.contains(where: {CharacterSet.newlines.contains($0)}) {
            constraintSet = .init()
        }
        
        string = string.dropLast(scriptTransformationSeparator.count).description
        
        string = string.components(separatedBy: constraintSet).last?.trimmingCharacters(in: .whitespaces) ?? .init()
        
        let sourceString = string + scriptTransformationSeparator + scriptTransformationTargetCode + constraint
        
        var sourceScript: Script? = nil
        
        for character in string.reversed() {
            if let script = scriptTransformationTarget.scriptTable.scriptLetterSets.filter({$0.value.contains(character.lowercased().decomposedStringWithCanonicalMapping.unicodeScalars.first!) && $0.key != scriptTransformationTarget.targetScript}).first?.key {
                sourceScript = script
                break
            }
        }
        
        if let sourceScript = sourceScript {
            let targetString = string.applyingTransform(from: sourceScript, to: scriptTransformationTarget.targetScript, withTable: scriptTransformationTarget.scriptTable, withEscapeSequence: "`")!
            
            return (sourceString, targetString)
        }
        else {
            return nil
        }
    }
    
    func applyingReverseTransform(transformationCode: String, sourceScript: Script = .Latn) -> String? {
        guard let scriptTransformation = scriptTransformationTargetCodes[transformationCode] else {
            return nil
        }
        
        let sourceText = "\(self.applyingTransform(from: scriptTransformation.targetScript, to: sourceScript, withTable: scriptTransformation.scriptTable)!) \(transformationCode)"
        
        guard sourceText.transformationByTargetScriptCode()?.targetString == .init(self) else {
            return nil
        }
        
        return sourceText
    }
}
