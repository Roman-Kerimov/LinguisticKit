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

public struct TransformationByTargetScriptCodeResult {
    public let sourceString: String
    public let targetString: String
    
    let isEducationTransformation: Bool
    let randomWord: String
    
    public func storeWordSetIfNeeded() {
        guard isEducationTransformation else {
            return
        }
        
        Self.wordSet.insert(randomWord)
        try! FileManager.default.createDirectory(at: Self.wordSetURL.deletingLastPathComponent(), withIntermediateDirectories: true)
        try! JSONEncoder().encode(Self.wordSet).write(to: Self.wordSetURL, options: .atomic)
    }
    
    fileprivate static let wordSetURL = try! FileManager.default.url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        .appendingPathComponent("LinguisticKit")
        .appendingPathComponent("educatedWordSet")
    
    fileprivate static var wordSet: Set<String> = {
        if let data = try? Data(contentsOf: wordSetURL) {
            return try! JSONDecoder().decode(Set<String>.self, from: data)
        } else {
            return []
        }
    }()
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
            autoreleasepool {
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
        from sourceScript: Script,
        to targetScript: Script,
        withTable scriptTable: ScriptTable,
        withEscapeSequence escapeSequence: String
    ) -> String? {
        
        guard scriptTable.scripts.contains(sourceScript), scriptTable.scripts.contains(targetScript) else {
            return nil
        }
        
        return components(separatedBy: escapeSequence + escapeSequence)
            .map { (segment) -> String in
                segment
                    .components(separatedBy: escapeSequence)
                    .enumerated()
                    .map { (offset, element) -> String in
                        let escapedLetters = offset == 0 ? "" : element.prefix(while: {$0.isLetter} ).description
                        let escapedPrefix = offset == 0 ? "" : escapedLetters.isEmpty ? escapeSequence : escapedLetters
                        return escapedPrefix + element.dropFirst(escapedLetters.count)
                            .applyingTransform(from: sourceScript, to: targetScript, withTable: scriptTable)!
                    }
                    .joined()
            }
            .joined(separator: escapeSequence)
    }
    
    func transformationByTargetScriptCode() -> TransformationByTargetScriptCodeResult? {
        
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
        
        var scriptTransformationTargetCode = string.components(separatedBy: .whitespacesAndNewlines).last ?? ""
        
        let isEducationMode = scriptTransformationTargetCode.hasPrefix(".")
        
        if isEducationMode {
            scriptTransformationTargetCode.removeFirst()
        }
        
        guard let scriptTransformationTarget = scriptTransformationTargetCodes[scriptTransformationTargetCode] else {
            return nil
        }
        
        string = string.dropLast(scriptTransformationTargetCode.count).description
        
        if isEducationMode {
            string.removeLast()
        }
        
        let scriptTransformationSeparator = string.components(separatedBy: .whitespacesAndNewlines.inverted).last ?? ""
        
        if scriptTransformationSeparator.unicodeScalars.contains(where: {CharacterSet.newlines.contains($0)}) {
            constraintSet = CharacterSet()
        }
        
        string = string.dropLast(scriptTransformationSeparator.count).description
        
        string = string.components(separatedBy: constraintSet).last?.trimmingCharacters(in: .whitespaces) ?? .init()
        
        let sourceString = string + scriptTransformationSeparator + (isEducationMode ? "." : "") + scriptTransformationTargetCode + constraint
        
        var sourceScript: Script? = nil
        
        for character in string.reversed() {
            let script = scriptTransformationTarget.scriptTable.scriptLetterSets
                .filter {
                    $0.value.contains(
                        character.lowercased().decomposedStringWithCanonicalMapping.unicodeScalars.first!
                    )
                    && $0.key != scriptTransformationTarget.targetScript
                }
                .first?.key
            
            if let script = script {
                sourceScript = script
                break
            }
        }
        
        if let sourceScript = sourceScript {
            var targetString = string
                .applyingTransform(
                    from: sourceScript,
                    to: scriptTransformationTarget.targetScript,
                    withTable: scriptTransformationTarget.scriptTable,
                    withEscapeSequence: "`"
                )!
            
            var randomWord: String?
            
            if isEducationMode {
                let words = targetString
                    .components(separatedBy: .letters.inverted)
                    .filter {$0.isEmpty == false}
                
                 randomWord = words.randomElement()
                
                words
                    .forEach { word in
                        if TransformationByTargetScriptCodeResult.wordSet.contains(word) || word == randomWord {
                            let wordRegularExpression = try! NSRegularExpression(pattern: "\\b\(word)\\b")
                            targetString = wordRegularExpression
                                .stringByReplacingMatches(
                                    in: targetString,
                                    range: NSRange(location: 0, length: targetString.count),
                                    withTemplate: word
                                        .applyingTransform(
                                            from: scriptTransformationTarget.targetScript,
                                            to: sourceScript,
                                            withTable: scriptTransformationTarget.scriptTable
                                        )!
                                )
                        }
                    }
            }
            
            return .init(sourceString: sourceString, targetString: targetString, isEducationTransformation: isEducationMode, randomWord: randomWord ?? "")
        } else {
            return nil
        }
    }
    
    func applyingReverseTransform(transformationCode: String, sourceScript: Script = .Latn) -> String? {
        guard let scriptTransformation = scriptTransformationTargetCodes[transformationCode] else {
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
