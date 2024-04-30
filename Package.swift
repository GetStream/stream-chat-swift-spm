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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.53.0/StreamChat.zip",
                      checksum: "625924c27a0504c57c5ee0d123e512210185ecdc652d09c786a6659d64574c3a"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.53.0/StreamChatUI.zip",
                      checksum: "4976ee8cbc578477e0c4a9c2fd235c3caae69cc68ad70724dbda5cf7175126ca")
    ]
)
