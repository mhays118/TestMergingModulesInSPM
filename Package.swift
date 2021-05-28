// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MainTarget",
    products: [
        .library(name: "MainTarget", targets: ["MainTarget", "CoreTarget"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "MainTarget", dependencies: ["CoreTarget"]),
        .target(name: "CoreTarget", dependencies: []),
        .testTarget(name: "MainTargetTests", dependencies: ["MainTarget"]),
    ]
)
