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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.24.1/StreamChat.zip",
                      checksum: "32884560b357f8d4c665380cc4a761756a5f7cb4aed7d405d9309af5ffe5076f"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.24.1/StreamChatUI.zip",
                      checksum: "e0e63df82d062ab48ee6ebbe934f8aa11f99a64d3f958fe853bc93c32a75a500")
    ]
)
