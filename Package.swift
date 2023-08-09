// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "LinguisticKit",
    products: [
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
