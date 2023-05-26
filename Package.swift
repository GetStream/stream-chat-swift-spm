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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.32.0/StreamChat.zip",
                      checksum: "a49a4fd32c968e43f52fd123e06869200e08726445a34105d4df91b46eb928c7"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.32.0/StreamChatUI.zip",
                      checksum: "b5a0f8aa6058d6b712326a801c77913b0b34934fcf34386b8b0c4829794c9f26")
    ]
)
