// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AmitySDK",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AmitySDK",
            targets: ["AmitySDK", "Realm", "RealmSwift", "AmityLiveVideoBroadcastKit", "AmityVideoPlayerKit", "MobileVLCKit"]),
    ],
targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SharedFrameworks",
            dependencies: []),
        .binaryTarget(
                    name: "AmitySDK",
                    url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/3.19.2/AmitySDK.xcframework.zip",
                    checksum: "eef1003265ce7fed82cbef74780d90790154861041821cb25e84e0a8c1ec835d"
                ),
        .binaryTarget(
                    name: "Realm",
                    url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/3.20.16/Realm.xcframework.zip",
                    checksum: "f0ee04791cde97e2919c64ae57ec7b921c9cb15a0040029511ca5752b5bde907"
                ),
         .binaryTarget(
                    name: "RealmSwift",
                    url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/3.20.16/RealmSwift.xcframework.zip",
                    checksum: "b42688f00b98bdca4a58f573fedb64f0f971a8890c6af5513ad5625035d6558c"
                ),
        .binaryTarget(
                    name: "AmityLiveVideoBroadcastKit",
                    url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/3.19.2/AmityLiveVideoBroadcastKit.xcframework.zip",
                    checksum: "7f2da57f6dc0530777e328b521427740ea25e518cb36083de0df6d613a0d3e3d"
                ),
        .binaryTarget(
                    name: "AmityVideoPlayerKit",
                    url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/3.19.2/AmityVideoPlayerKit.xcframework.zip",
                    checksum: "e5f2401bd0f60c614bfce87a658a52755fc41c678f01fc87863689c700fd027a"
                ),
        .binaryTarget(
                    name: "MobileVLCKit",
                    url: "https://sdk.amity.co/sdk-release/ios-frameworks/6.8.0/MobileVLCKit.xcframework.zip",
                    checksum: "23224e65575cdc18314937efb1af0ce8791f1ed567440e52fb0b6e37621bb9f3"
                ),
    ]
)
