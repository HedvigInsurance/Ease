// swift-tools-version:5.3
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
        .package(url: "https://github.com/hedviginsurance/Flow", .branch("master")),
    ],
    targets: [
        .target(
            name: "Ease",
            dependencies: ["Flow"],
            path: "Ease"),
    ]
)
