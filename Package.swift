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
            url: "https://github.com/DropOnAir/droponair-sdk-ios-binary/releases/download/0.16.0/DropOnAirSDK.xcframework.zip",
            checksum: "caefb18fe4f9dd45ebf767a1166f4bb2dd0073b5b404d9eb6ba51dc5d934437b"
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
