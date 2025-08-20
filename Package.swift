// swift-tools-version:5.9
// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "ZenColorPicker",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ZenColorPicker",
            targets: ["ZenColorPicker"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Marxon13/M13Checkbox.git", from: "3.4.1")
    ],
    targets: [
        .target(
            name: "ZenColorPicker",
            dependencies: ["M13Checkbox"],
            path: "Sources/ZenColorPicker",
            exclude: [
                "Tests"
            ],
            sources: [
                "View",
                "Protocol",
                "Extension"
            ],
            resources: [
                .process("Resources")
            ],
            swiftSettings: []
        ),
        .testTarget(
            name: "ZenColorPickerTests",
            dependencies: ["ZenColorPicker"],
            path: "Tests"
        )
    ]
)
