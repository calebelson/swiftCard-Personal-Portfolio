// swift-tools-version:6.2
import PackageDescription

let package = Package(
  name: "vcard-personal-portfolio",
  platforms: [.macOS(.v26)],
  dependencies: [
    .package(url: "https://github.com/elementary-swift/elementary-ui.git", from: "0.1.3")
  ],
  targets: [
    .executableTarget(
      name: "vcard-personal-portfolio",
      dependencies: [
        .product(name: "ElementaryUI", package: "elementary-ui")
      ],
      swiftSettings: [
        .swiftLanguageMode(.v5)
      ],
    )
  ]
)
