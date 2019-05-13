#if !canImport(ObjectiveC)
import XCTest

extension LinguisticKitTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__LinguisticKitTests = [
        ("testExample", testExample),
        ("testPerformanceExample", testPerformanceExample),
    ]
}

extension ScriptTableAzTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ScriptTableAzTests = [
        ("testAzScriptTable", testAzScriptTable),
    ]
}

extension ScriptTableRuTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ScriptTableRuTests = [
        ("testRuScriptTable", testRuScriptTable),
    ]
}

extension StringProtocolTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__StringProtocolTests = [
        ("testApplyingTransformByTargetScriptCode", testApplyingTransformByTargetScriptCode),
        ("testEscaping", testEscaping),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(LinguisticKitTests.__allTests__LinguisticKitTests),
        testCase(ScriptTableAzTests.__allTests__ScriptTableAzTests),
        testCase(ScriptTableRuTests.__allTests__ScriptTableRuTests),
        testCase(StringProtocolTests.__allTests__StringProtocolTests),
    ]
}
#endif
