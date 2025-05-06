// swift-tools-version:5.9
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
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Marxon13/M13Checkbox.git", from: "1.3.0")
    ],
    targets: [
        .target(
            name: "ZenColorPicker",
            dependencies: ["M13Checkbox"],
            path: "Sources/ZenColorPicker"
        ),
        .testTarget(
            name: "ZenColorPickerTests",
            dependencies: ["ZenColorPicker"]
        ),
    ]
)
