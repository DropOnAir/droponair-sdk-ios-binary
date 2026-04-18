// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DropOnAirSDK",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
    ],
    products: [
        .library(name: "DropOnAirSDK", targets: ["DropOnAirSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "DropOnAirSDK",
            url: "https://github.com/DropOnAir/droponair-sdk-ios-binary/releases/download/0.3.0/DropOnAirSDK.xcframework.zip",
            checksum: "6e30b89f99fec79f5d9404b0225735951c1d924b0403a0246216711f97933b36"
        ),
    ]
)
