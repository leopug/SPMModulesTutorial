// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CompanyKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "CompanyKit",
            targets: ["CompanyCoordinatorKit", "CompanyLoginKit","CompanyHomeKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CompanyCoordinatorKit",
            dependencies: []),
        .testTarget(
            name: "CompanyCoordinatorKitTests",
            dependencies: ["CompanyCoordinatorKit"]),
        
        .target(
            name: "CompanyLoginKit",
            dependencies: ["CompanyCoordinatorKit"]),
        .testTarget(
            name: "CompanyLoginKitTests",
            dependencies: ["CompanyLoginKit"]),
        
        .target(
            name: "CompanyHomeKit",
            dependencies: ["CompanyCoordinatorKit"]),
        .testTarget(
            name: "CompanyHomeKitTests",
            dependencies: ["CompanyHomeKit"]),
    ]
)
