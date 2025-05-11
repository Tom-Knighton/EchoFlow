// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "API",
    platforms: [.iOS(.v18)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "API",
            targets: ["API"]),
    ],
    dependencies: [
        .package(url: "https://github.com/auth0/Auth0.swift", .upToNextMajor(from: "2.11.0")),
        .package(
                url: "https://github.com/apollographql/apollo-ios.git",
                .upToNextMajor(from: "1.0.0")
            )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "API",
            dependencies: [.product(name: "Auth0", package: "Auth0.swift"), .product(name: "Apollo", package: "apollo-ios")]),

    ]
)
