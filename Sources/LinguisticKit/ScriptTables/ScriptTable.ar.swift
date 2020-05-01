//
//  ScriptTable.ar.swift
//  
//
//  Created by Roman Kerimov on 2020-04-29.
//

public extension ScriptTable {
    static let ar = ScriptTable(languageCode: "ar", defaultScript: .Arab) {[
        .a,
        .l,
        .n,
        .m,
        .init([.Arab: "ي", .Latn: "y"]),
        .w,
        .h,
        .b,
        .r,
        .f,
        .q,
        .d,
        .s,
        .k,
        .t,
        .z,
    ]}
}
