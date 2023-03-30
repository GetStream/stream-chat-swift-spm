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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.30.0/StreamChat.zip",
                      checksum: "56efe5729d1ab6d774b836947dfc741866e61a5cd9cf457f0a62c484f6eb9ee6"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.30.0/StreamChatUI.zip",
                      checksum: "f1aa7ef12abf55307b1804952f5c3bcb42927fd6b0c1a7c19ea67bf7e1c0fea2")
    ]
)
