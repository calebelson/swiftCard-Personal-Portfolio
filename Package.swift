// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swiftCard",
    platforms: [.macOS(.v15)], 
    dependencies: [
        .package(url: "https://github.com/elementary-swift/elementary-ui", from: "0.1.3"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "swiftCard",
            dependencies: [
                .product(name: "ElementaryUI", package: "elementary-ui"),
            ]
        ),
    ]
)
