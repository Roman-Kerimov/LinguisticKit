// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "LinguisticKit",
    products: [
        .executable(
            name: "LinguisticKitBuildTool",
            targets: [
                "LinguisticKitBuildTool",
            ]
        ),
        .library(
            name: "LinguisticKit",
            type: .dynamic,
            targets: [
                "LinguisticKit",
            ]
        ),
        .library(
            name: "LinguisticKit.static",
            type: .static,
            targets: [
                "LinguisticKit",
            ]
        ),
    ],
    targets: [
        .executableTarget(
            name: "LinguisticKitBuildTool",
            dependencies: [
                "LinguisticKit",
            ]
        ),
        .target(
            name: "LinguisticKit"
        ),
        .testTarget(
            name: "LinguisticKitTests",
            dependencies: [
                "LinguisticKit",
            ]
        ),
    ]
)
