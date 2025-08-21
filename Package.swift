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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.86.0/StreamChat.zip",
                      checksum: "af58442ff1db9c43b60b0e50cad661c9f82f17fb2aa4b0e33e466b6f96265174"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.86.0/StreamChatUI.zip",
                      checksum: "fd2ca47d10af8b65d5b6fb1356b3dc1dc9c77d70477d85be843a13c342439ed2")
    ]
)
