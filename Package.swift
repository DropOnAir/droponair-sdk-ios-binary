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
            url: "https://github.com/DropOnAir/droponair-sdk-ios-binary/releases/download/0.33.0/DropOnAirSDK.xcframework.zip",
            checksum: "9795cccef032adebbe5dbcc79123f8a390f0e3ffbf234521fe1d338c1660f88a"
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
