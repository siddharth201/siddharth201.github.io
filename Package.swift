// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MySwiftBlog",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(
            name: "Run",
            targets: ["Run"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/JohnSundell/Publish.git",
            from: "0.9.0"
        )
    ],
    targets: [
        .executableTarget(
            name: "Run",
            dependencies: [
                .product(name: "Publish", package: "Publish")
            ],
            path: "Sources/Run"
        )
    ]
)
