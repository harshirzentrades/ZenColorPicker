// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "IGColorPicker",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "IGColorPicker",
            targets: ["IGColorPicker"]
        )
    ],
    targets: [
        .target(
            name: "IGColorPicker",
            path: "IGColorPicker/Classes",
            sources: [
                "View",
                "Protocol",
                "Extension",
                "."
            ],
            resources: [
                .process("../../../Resources") // if you want to include PNGs from Resources
            ]
        ),
        .testTarget(
            name: "IGColorPickerTests",
            dependencies: ["IGColorPicker"], path: "Tests",
            sources: ["ZenColorPickerTests"]
        )
    ]
)

