//
//  main.swift
//
//
//  Created by Roman Kerimov on 14/8/23.
//

import Foundation
@testable import LinguisticKit

let packageURL = URL(string: "file://\(#filePath)")!
    .deletingLastPathComponent()
    .deletingLastPathComponent()
    .deletingLastPathComponent()

let extractedURL = packageURL
    .appendingPathComponent("Extracted")

let encoder = JSONEncoder()
encoder.outputFormatting = [.prettyPrinted, .sortedKeys]

// MARK: Scripts
let scriptsURL = extractedURL
    .appendingPathComponent("Scripts")

try? FileManager.default.createDirectory(at: scriptsURL, withIntermediateDirectories: true)

do {
    try encoder
        .encode(Script.allCases)
        .write(to: scriptsURL.appendingPathComponent("scripts.json"))
    
    try encoder
        .encode(Script.caseSensitiveScripts.sorted())
        .write(to: scriptsURL.appendingPathComponent("caseSensitiveScripts.json"))
} catch {
    fatalError(error.localizedDescription)
}

// MARK: ScriptTables
let scriptTablesURL = extractedURL
    .appendingPathComponent("ScriptTables")

try? FileManager.default.createDirectory(at: scriptTablesURL, withIntermediateDirectories: true)

ScriptTable.allTables.forEach { scriptTable in
    do {
        try encoder
            .encode(scriptTable)
            .write(
                to: scriptTablesURL
                    .appendingPathComponent("\(scriptTable.name).json"),
                options: .atomic
            )
    } catch {
        fatalError(error.localizedDescription)
    }
}

// MARK: ScriptTablesDescription
let scriptTablesDescriptionURL = extractedURL
    .appendingPathComponent("ScriptTablesDescription")

try? FileManager.default.createDirectory(at: scriptTablesDescriptionURL, withIntermediateDirectories: true)

do {
    try encoder
        .encode(
            Dictionary(
                uniqueKeysWithValues: ScriptTable.Cell.ContextType.allCases.map { contextType in
                    (contextType.rawValue, contextType.components.sorted())
                }
            )
        )
        .write(
            to: scriptTablesDescriptionURL
                .appendingPathComponent("ContextValues.json"),
            options: .atomic
        )
} catch {
    fatalError(error.localizedDescription)
}
