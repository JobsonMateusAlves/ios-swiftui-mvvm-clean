// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Domain",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "Domain",
            targets: ["Domain"]),
    ],
    dependencies: [
        .package(name: "Common", path: "../Common"),
    ],
    targets: [
        .target(
            name: "Domain",
            dependencies: ["Common"]),
        .testTarget(
            name: "DomainTests",
            dependencies: ["Domain"]),
    ]
)
