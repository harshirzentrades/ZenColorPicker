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
        // Add external dependencies here
    ],
    targets: [
        .target(
            name: "ZenColorPicker",
            dependencies: []
        ),
        .testTarget(
            name: "ZenColorPickerTests",
            dependencies: ["ZenColorPicker"]
        ),
    ]
)
