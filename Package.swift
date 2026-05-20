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
            url: "https://github.com/DropOnAir/droponair-sdk-ios-binary/releases/download/0.11.0/DropOnAirSDK.xcframework.zip",
            checksum: "65da6e18c19d447bffdf90218a6a7af4e305acaa10ed4de120b752a3453ca40e"
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
