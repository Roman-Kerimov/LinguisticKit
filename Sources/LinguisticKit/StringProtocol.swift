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
        } else if firstCharacter.isUppercase, count == 1 {
            return .uppercasedOrCapitalized
        } else if filter({$0.isCased}).map(\.isLowercase).contains(false) == false {
            return .lowercased
        } else if map(\.isLowercase).contains(true) || (!firstCharacter.isUppercase && !firstCharacter.isLowercase) {
            return .capitalized
        } else if filter({$0.isCased}).map(\.isUppercase).contains(false) == false {
            return .uppercased
        } else {
            return .uncased
        }
    }
    
    func applyingTransform(
        from sourceScript: Script,
        to targetScript: Script,
        withTable scriptTable: ScriptTable
    ) -> String? {
        guard scriptTable.scripts.contains(sourceScript), scriptTable.scripts.contains(targetScript) else {
            return nil
        }
        
        let sourceLocale = scriptTable.locale(script: sourceScript)
        let targetLocale = scriptTable.locale(script: targetScript)
        
        var elements: [(source: String, target: String)] = []
        
        let unicodeScalars = decomposedStringWithCanonicalMapping.unicodeScalars
        var tail = unicodeScalars[unicodeScalars.startIndex..<unicodeScalars.endIndex]
        let maxElementLength = scriptTable.maxElementLength(forScript: sourceScript)
        
        while tail.isEmpty == false {
            var sourceElementLength = maxElementLength
            
            while true {
                
                let sourceElement: String = tail.prefix(sourceElementLength).map(\.description).joined()
                
                if let targetElement = scriptTable.element(
                    of: targetScript,
                    from: sourceElement.lowercased(with: sourceLocale),
                    of: sourceScript,
                    prefixElement: elements.last?.source ?? "",
                    postfixString: tail.dropFirst(sourceElementLength).prefix(maxElementLength)
                        .map(\.description)
                        .joined()
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
            
            tail = tail.dropFirst(sourceElementLength)
        }
        
        var elementCases: [Case] = elements.map(\.source.case)
        
        for (index, elementCase) in elementCases.enumerated() {
            guard elementCase == .uppercasedOrCapitalized else {
                continue
            }
            
            guard index != 0, index != elementCases.count - 1 else {
                continue
            }
            
            switch (elementCases[index - 1], elementCases[index + 1]) {
            case (_, .uncased):
                continue
                
            case (_, .lowercased):
                elementCases[index] = .capitalized
                
            default:
                elementCases[index] = .uppercased
            }
        }
        
        elementCases.enumerated()
            .split {[.uppercasedOrCapitalized, .uppercased].contains($0.element) == false}
            .forEach { sequence in
                guard sequence.count > 1 else {
                    return
                }
                
                sequence.forEach {
                    elementCases[$0.offset] = .uppercased
                }
            }
        
        for (index, _) in elementCases.enumerated().filter({$0.element == .uppercasedOrCapitalized}) {
            let casedElelementCasesBeforeAndAfter = elementCases.enumerated()
                .filter {[.uppercasedOrCapitalized, .uncased].contains($0.element) == false}
                .split {$0.offset == index}
            
            let contextCases = [
                casedElelementCasesBeforeAndAfter.first?.last?.element,
                casedElelementCasesBeforeAndAfter.last?.first?.element
            ]
            
            elementCases[index] = contextCases.contains(.uppercased) ? .uppercased : .capitalized
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
        
        return elements.map(\.target).joined().precomposedStringWithCanonicalMapping
    }
    
    func applyingTransform(
        from sourceMathAlphanumericType: MathAlphanumericType,
        to targetMathAlphanumericType: MathAlphanumericType
    ) -> String? {
        String(
            map { character in
                guard let position = mathAlphanumericCharacterPositions[character] else {
                    return character
                }
                
                guard position.type == sourceMathAlphanumericType else {
                    return character
                }
                
                guard let targetCharacter = mathAlphanumericTable[position.row][targetMathAlphanumericType.rawValue] else {
                    return character
                }
                
                return targetCharacter
            }
        )
    }
    
    private func applyingTransform(withEscapeSequence escapeSequence: String, transform: (String) -> String) -> String {
        components(separatedBy: escapeSequence + escapeSequence)
            .map { (segment) -> String in
                segment
                    .components(separatedBy: escapeSequence)
                    .enumerated()
                    .map { (offset, element) -> String in
                        let escapedLetters = offset == 0 ? "" : element.prefix(while: {$0.isLetter} ).description
                        let escapedPrefix = offset == 0 ? "" : escapedLetters.isEmpty ? escapeSequence : escapedLetters
                        return escapedPrefix + transform(String(element.dropFirst(escapedLetters.count)))
                    }
                    .joined()
            }
            .joined(separator: escapeSequence)
    }
    
    func applyingTransform(
        from sourceScript: Script,
        to targetScript: Script,
        withTable scriptTable: ScriptTable,
        withEscapeSequence escapeSequence: String
    ) -> String? {
        
        guard scriptTable.scripts.contains(sourceScript), scriptTable.scripts.contains(targetScript) else {
            return nil
        }
        
        return applyingTransform(withEscapeSequence: escapeSequence) { string in
            string.applyingTransform(from: sourceScript, to: targetScript, withTable: scriptTable)!
        }
    }
    
    func applyingTransform(
        from sourceMathAlphanumericType: MathAlphanumericType,
        to targetMathAlphanumericType: MathAlphanumericType,
        withEscapeSequence escapeSequence: String
    ) -> String? {
        applyingTransform(withEscapeSequence: escapeSequence) { string in
            string.applyingTransform(from: sourceMathAlphanumericType, to: targetMathAlphanumericType)!
        }
    }
    
    func transformationByTargetScriptCode() -> (sourceString: String, targetString: String)? {
        
        var string: String
        
        let constraint: String
        var constraintSet: CharacterSet
        
        if let character = self.last, CharacterSet.whitespaces.contains(character.unicodeScalars.first!) {
            constraint = character.description
            constraintSet = .whitespacesAndNewlines
            string = self.dropLast().description
        } else {
            constraint = ""
            constraintSet = .newlines
            string = self.description
        }
        
        let scriptTransformationCode = string.components(separatedBy: .whitespacesAndNewlines).last ?? ""
        
        guard let scriptTransformation = scriptTransformationCodes[scriptTransformationCode] else {
            return nil
        }
        
        string = string.dropLast(scriptTransformationCode.count).description
        
        let scriptTransformationSeparator = string.components(separatedBy: .whitespacesAndNewlines.inverted).last ?? ""
        
        if scriptTransformationSeparator.unicodeScalars.contains(where: {CharacterSet.newlines.contains($0)}) {
            constraintSet = CharacterSet()
        }
        
        string = string.dropLast(scriptTransformationSeparator.count).description
        
        string = string.components(separatedBy: constraintSet).last?.trimmingCharacters(in: .whitespaces) ?? .init()
        
        let sourceString = string + scriptTransformationSeparator + scriptTransformationCode + constraint
        
        let escapingSequence = "`"
        
        if let scriptTableTransformation = scriptTransformation.scriptTableTransformation {
            
            var sourceScript: Script? = nil
            
            for character in string.reversed() {
                let script = scriptTableTransformation.scriptTable.scriptLetterSets
                    .filter {
                        $0.value.contains(
                            character.lowercased().decomposedStringWithCanonicalMapping.unicodeScalars.first!
                        )
                        && $0.key != scriptTableTransformation.targetScript
                    }
                    .first?.key
                
                if let script = script {
                    sourceScript = script
                    break
                }
            }
            
            if let sourceScript = sourceScript {
                let targetString = string
                    .applyingTransform(
                        from: sourceScript,
                        to: scriptTableTransformation.targetScript,
                        withTable: scriptTableTransformation.scriptTable,
                        withEscapeSequence: escapingSequence
                    )!
                
                return (sourceString, targetString)
            } else {
                return nil
            }
        } else if let mathAlphanumericTransformation = scriptTransformation.mathAlphanumericTransformation {
            var sourceMathAlphanumericType: MathAlphanumericType?
            
            let _ = string.last { character in
                sourceMathAlphanumericType = mathAlphanumericCharacterPositions[character]?.type
                return sourceMathAlphanumericType != nil
            }
            
            if let sourceMathAlphanumericType = sourceMathAlphanumericType {
                let targetString = string
                    .applyingTransform(
                        from: sourceMathAlphanumericType,
                        to: mathAlphanumericTransformation.targetMathAlphanumericType,
                        withEscapeSequence: escapingSequence
                    )!
                
                return (sourceString, targetString)
            } else {
                return nil
            }
        } else {
            fatalError()
        }
    }
    
    func applyingReverseTransform(transformationCode: String, sourceScript: Script = .Latn) -> String? {
        guard let scriptTransformation = scriptTransformationCodes[transformationCode]?.scriptTableTransformation else {
            return nil
        }
        
        let sourceText = applyingTransform(
            from: scriptTransformation.targetScript,
            to: sourceScript,
            withTable: scriptTransformation.scriptTable
        )!
        
        let sourceTextWithTransformationCode = "\(sourceText) \(transformationCode)"
        
        guard sourceTextWithTransformationCode.transformationByTargetScriptCode()?.targetString == String(self) else {
            return nil
        }
        
        return sourceTextWithTransformationCode
    }
}
