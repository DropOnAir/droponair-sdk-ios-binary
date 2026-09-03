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
            url: "https://github.com/DropOnAir/droponair-sdk-ios-binary/releases/download/0.27.0/DropOnAirSDK.xcframework.zip",
            checksum: "1ec6dd13d4d9158993b4949ae754588790580d26ac5675affa248be7a79ac9d8"
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
