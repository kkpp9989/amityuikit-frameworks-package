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
                    url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/3.19.0/AmitySDK.xcframework.zip",
                    checksum: "d0d090597e2d987448dbde833477cf68270f23a618120792e810073e77978ab1"
                ),
        .binaryTarget(
                    name: "Realm",
                    url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.18.1/Realm.xcframework.zip",
                    checksum: "fa56dfa5e98eeff694160b814417268ffebe30169a0e9eb88fc7f7e8c102c80b"
                ),
         .binaryTarget(
                    name: "RealmSwift",
                    url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.18.1/RealmSwift.xcframework.zip",
                    checksum: "cba861cb49a150d5164736edce270cf766531a268763afd0a252bf0fd71cb34a"
                ),
        .binaryTarget(
                    name: "AmityLiveVideoBroadcastKit",
                    url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.18.1/AmityLiveVideoBroadcastKit.xcframework.zip",
                    checksum: "eedf71b59c02777f5fb771b9cbe3b45145d85fd1cb0326385a199961590df23b"
                ),
        .binaryTarget(
                    name: "AmityVideoPlayerKit",
                    url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.18.1/AmityVideoPlayerKit.xcframework.zip",
                    checksum: "e9702b03ab92e45b7f59c0d35c4de46a1fd5e89bde971e8c308304a19405f55f"
                ),
        .binaryTarget(
                    name: "MobileVLCKit",
                    url: "https://sdk.amity.co/sdk-release/ios-frameworks/6.8.0/MobileVLCKit.xcframework.zip",
                    checksum: "23224e65575cdc18314937efb1af0ce8791f1ed567440e52fb0b6e37621bb9f3"
                ),
    ]
)
