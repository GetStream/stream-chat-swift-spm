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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.9.0/StreamChat.zip",
                      checksum: "144df7118e4e3fe7417be207ee670be37a7a5fc7166cd905e30de599f24ea224"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.9.0/StreamChatUI.zip",
                      checksum: "6952c641bc2f50866c1e83030a8939cf9ae0bf88633d8da6d160b3a02a6c46ae")
    ]
)
