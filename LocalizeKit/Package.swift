// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LocalizeKit",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "LocalizeKit",
            targets: ["LocalizeKit"]),
    ],
    targets: [
        .target(
            name: "LocalizeKit"),
        .testTarget(
            name: "LocalizeKitTests",
            dependencies: ["LocalizeKit"],
            resources: [
                .process("Localizable.strings")
            ]),
    ]
)
