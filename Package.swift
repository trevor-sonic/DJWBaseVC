// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DJWBaseVC",
    
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12),
        .tvOS(.v10)
    ],
    
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "DJWBaseVC",
            targets: ["DJWBaseVC"]),
    ],
    dependencies: [
        ///public
        //.package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "DJWBaseVC",
            dependencies: [
                ///public
                //"SnapKit"
        ]),
        .testTarget(
            name: "DJWBaseVCTests",
            dependencies: ["DJWBaseVC"]),
    ]
)
