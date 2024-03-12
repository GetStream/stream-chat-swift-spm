// swift-tools-version:5.5

import Foundation
import PackageDescription

let package = Package(
    name: "StreamChat",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11), .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "StreamChat",
            targets: ["StreamChat"]
        ),
        .library(
            name: "StreamChatUI",
            targets: ["StreamChatUI"]
        )
    ],
    targets: [
        .binaryTarget(name: "StreamChat",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.50.0/StreamChat.zip",
                      checksum: "4f61feb4549071d8797b61691cc256d1c3e3cf12f27ab5ecc72422536b031318"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.50.0/StreamChatUI.zip",
                      checksum: "10735293a6f1cd531697bb0706461fb87ff0848ae50b5fa7eaccc4de3fb7cc47")
    ]
)
