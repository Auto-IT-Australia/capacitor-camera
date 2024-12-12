// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AutoItAustraliaCapacitorCamera",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "AutoItAustraliaCapacitorCamera",
            targets: ["CameraPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "CameraPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CameraPlugin"),
        .testTarget(
            name: "CameraPluginTests",
            dependencies: ["CameraPlugin"],
            path: "ios/Tests/CameraPluginTests")
    ]
)
