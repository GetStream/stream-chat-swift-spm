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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.31.0/StreamChat.zip",
                      checksum: "29cfeb8310e30244abbcaee2a4e2f7a0218d8380d9f0d17d6733e32882083915"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.31.0/StreamChatUI.zip",
                      checksum: "8ad4a1c12ac7abf11901e5b58a7e5f8d3f0b702010ae142b22e28df9b8a9476e")
    ]
)
