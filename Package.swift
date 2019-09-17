// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "EasingFunction",
    products: [
        .library(
            name: "EasingFunction",
            targets: ["EasingFunction"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "EasingFunction",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "EasingFunctionTests",
            dependencies: ["EasingFunction"],
            path: "Tests"
        ),
    ]
)
