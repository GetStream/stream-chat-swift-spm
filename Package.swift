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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.49.0/StreamChat.zip",
                      checksum: "bd671d9530790afe82d150a608ed9a6f64ad31fcd4c54c3b429632587d75ab70"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.49.0/StreamChatUI.zip",
                      checksum: "b97fe4a55589e63fde3508237f8a36ba684d7e71041e1fc14b7d04196b525b9e")
    ]
)
