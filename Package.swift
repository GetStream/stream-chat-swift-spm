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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.43.0/StreamChat.zip",
                      checksum: "32aa18ca62d20b1dfbc8abd5d6cfc28e3f0451b06d03b40caa9794192f6e509a"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.43.0/StreamChatUI.zip",
                      checksum: "7f8c9c840f8e77e48ecc4becc436a9521a91078fd31c83a8e32b1ac5c9e93b7d")
    ]
)
