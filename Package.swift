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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.39.0/StreamChat.zip",
                      checksum: "728f51c68aca5a201cfb6e0827543c8cd0f0b007cb0e8f84323b9db665f54ac3"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.39.0/StreamChatUI.zip",
                      checksum: "2492f0f6285afa771127d75a3380685711d5da14d2ed58e5713ed423d93466a3")
    ]
)
