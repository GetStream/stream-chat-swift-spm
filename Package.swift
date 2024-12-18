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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.69.0/StreamChat.zip",
                      checksum: "59067a6b9c0135f4c9a2c0589020b47198c72fe964f2a8a13cba8b09ee4f5737"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.69.0/StreamChatUI.zip",
                      checksum: "1bb7e35d997dc6b971a631c8268490851c968b723aebb5c6e525f0b730061033")
    ]
)
