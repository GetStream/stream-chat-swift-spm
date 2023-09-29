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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.38.0/StreamChat.zip",
                      checksum: "a4f0778486bbdd799b35ae45b2420c8747dde80be7908b4a2c14689eea387643"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.38.0/StreamChatUI.zip",
                      checksum: "ae3eed24159816e9b183063ce2fdae439277cde3b41f0a3a136599e790f76b28")
    ]
)
