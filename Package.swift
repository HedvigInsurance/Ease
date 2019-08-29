// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Ease",
    products: [
        .library(
            name: "Ease",
            targets: ["Ease"]),
    ],
    dependencies: [
        .package(url: "https://github.com/hedviginsurance/flow", .branch("master")),
    ],
    targets: [
        .target(
            name: "Ease",
            dependencies: ["Flow"]),
    ]
)
