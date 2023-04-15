//
//  mathAlphanumericCharacterPositions.swift
//  
//
//  Created by Roman Kerimov on 2022-08-14.
//

import Foundation

let mathAlphanumericCharacterPositions: [Character: (row: Int, type: MathAlphanumericType)] = Dictionary(
    uniqueKeysWithValues: mathAlphanumericTable
        .enumerated()
        .flatMap { (row, characters) in
            characters
                .enumerated()
                .compactMap { (column, character) in
                    guard let character = character else {
                        return nil
                    }
                    
                    return (character, (row, MathAlphanumericType(rawValue: column)!))
                }
        }
)
