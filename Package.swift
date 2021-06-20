// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WWDocC",
    platforms: [
        .macOS(.v11),
        .iOS(.v14),
        .watchOS(.v7),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "WWDocC",
            targets: ["WWDocC"]),
    ],
    targets: [
        .target(
            name: "WWDocC",
            resources: [
                .process("Resources/")
            ]
        )
    ]
)
