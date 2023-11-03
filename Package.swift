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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.41.0/StreamChat.zip",
                      checksum: "320553bbd7bcb24d2561c78e1b2ab73d5a3fe9a50d73135c8b44e7c800c4a4e5"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.41.0/StreamChatUI.zip",
                      checksum: "853c3f3ad4befb7ca8cd73844432b6ce865707ff66c77e3464e82dcff82f7e99")
    ]
)
