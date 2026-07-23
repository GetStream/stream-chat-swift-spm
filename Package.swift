// swift-tools-version:5.9

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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.102.0/StreamChat.zip",
                      checksum: "b13d56b800d9cbe388d56f01dfc8b50078dc1bf9f44f6f438a5089c2e018d15c"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.102.0/StreamChatUI.zip",
                      checksum: "a7b5048d1e9ac1ae036b04a46dc0543f63400a007900bbf3f7c7f7fccde2551f")
    ]
)
