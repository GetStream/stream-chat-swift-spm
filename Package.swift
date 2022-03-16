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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.12.0/StreamChat.zip",
                      checksum: "28545e2d3d5f0e672351579dbd9fdc9f7d19d43ea590b9a13c2780c4ae6ee779"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.12.0/StreamChatUI.zip",
                      checksum: "4fb472664baa5b0202e9451db180439d032e4c6de3ed5d4ef128854da9094a62")
    ]
)
