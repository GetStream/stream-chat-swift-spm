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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.10.1/StreamChat.zip",
                      checksum: "57abe8a91e9912ce3fdc092e6581baba111338c3cafe99c97d5f83ff9d1b894a"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.10.1/StreamChatUI.zip",
                      checksum: "088767c0d97c5f78a0a0d401d366d657ec9d5066135d75c0da13a260730a5dbe")
    ]
)
