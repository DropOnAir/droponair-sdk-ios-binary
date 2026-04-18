# DropOnAir iOS SDK

Pre-built XCFramework binary distribution for the [DropOnAir](https://droponair.com) iOS SDK.

End-to-end encrypted real-time messaging, group chat, voice/video calls, and broadcast channels for iOS/macOS apps.

## Installation

### Swift Package Manager

Add the package dependency in Xcode:

**File > Add Package Dependencies** and enter:

```
https://github.com/DropOnAir/droponair-sdk-ios-binary.git
```

Or add it to your `Package.swift`:

```swift
.package(url: "https://github.com/DropOnAir/droponair-sdk-ios-binary.git", from: "0.3.0"),
```

Then add `DropOnAirSDK` to your target's dependencies:

```swift
.target(name: "YourApp", dependencies: [
    .product(name: "DropOnAirSDK", package: "droponair-sdk-ios-binary"),
]),
```

## Getting Started

1. Create a free account at [panel.droponair.com](https://panel.droponair.com)
2. Create an app in the dashboard to get your **App ID** and **Public API Key**
3. See the [demo app](https://github.com/DropOnAir/droponair-demo-ios) for a complete integration example

## Supported Platforms

- iOS 16+
- macOS 13+

## License

MIT
