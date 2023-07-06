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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.34.0/StreamChat.zip",
                      checksum: "0b39f779100a33dcbcb341e69b574850f57dfdb92fdbd5996e42a0134ffd7fd0"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.34.0/StreamChatUI.zip",
                      checksum: "04e5931fc12c02ec9999be2ad016155122faa37add613417f29a6926dd1fae5e")
    ]
)
