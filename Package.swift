// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Ease",
    products: [
        .library(
            name: "Ease",
            type: .dynamic,
            targets: ["Ease"]),
    ],
    dependencies: [
        .package(url: "https://github.com/hedviginsurance/flow", .upToNextMajor(from: "1.8.6")),
    ],
    targets: [
        .target(
            name: "Ease",
            dependencies: ["Flow"],
            path: "Ease"),
    ]
)
