// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import CompilerPluginSupport
import PackageDescription

let package = Package(
    name: "Sputnik",
    platforms: [
        .iOS(.v17),
        .macOS(.v11),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Sputnik",
            targets: ["Sputnik"]
        ),
        .library(
            name: "SputnikMacros",
            targets: ["SputnikMacros"]
        ),
        .library(name: "SputnikSharedResources",
                 targets: ["SputnikSharedResources"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swiftlang/swift-syntax.git", exact: "602.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .macro(
            name: "SputnikMacrosSources",
            dependencies: [
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
                "SputnikSharedResources",
            ]
        ),
        .target(name: "Sputnik",
                dependencies: ["SputnikSharedResources"]),
        .target(name: "SputnikSharedResources"),
        .target(name: "SputnikMacros",
                dependencies: ["SputnikMacrosSources", "SputnikSharedResources"])
    ]
)
