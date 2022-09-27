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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.22.0/StreamChat.zip",
                      checksum: "c35a0e3adec32ce82f4b2f40cf99b970745d3144cd6258f7c03adeb0116b651b"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.22.0/StreamChatUI.zip",
                      checksum: "0755b9b18b7d11a679493eac4f1e57610fd53861d5cd47ade6f5e1d4f6a192bf")
    ]
)
