// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DropOnAirSDK",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
    ],
    products: [
        .library(name: "DropOnAirSDK", targets: ["DropOnAirSDKWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.27.0"),
    ],
    targets: [
        .binaryTarget(
            name: "DropOnAirSDKBinary",
            url: "https://github.com/DropOnAir/droponair-sdk-ios-binary/releases/download/0.13.0/DropOnAirSDK.xcframework.zip",
            checksum: "e9e9a853b350f661caf07904b5a794940d71e7344ae8be904f9f8ad0eeb36bc7"
        ),
        .target(
            name: "DropOnAirSDKWrapper",
            dependencies: [
                "DropOnAirSDKBinary",
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
            ],
            path: "Sources/DropOnAirSDKWrapper"
        ),
    ]
)
