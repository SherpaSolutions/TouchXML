// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TouchXML",
    platforms: [.iOS(.v12), .macOS(.v10_13)],
    products: [
        .library(name: "TouchXML", type: .dynamic, targets: ["TouchXML"]),
    ],
    targets: [
        .target(
            name: "TouchXML",
            path: "Source",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("Creation"),
                .headerSearchPath("Tidy"),
            ],
            linkerSettings: [.linkedLibrary("xml2")]
        ),
    ]
)
