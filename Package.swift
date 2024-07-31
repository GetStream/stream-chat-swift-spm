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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.61.0/StreamChat.zip",
                      checksum: "1c0f7a76e44a7b81941c11a3730ae5569bc2b6a783849bfdb8aa7ca8c93387c3"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.61.0/StreamChatUI.zip",
                      checksum: "b23e98710d82786244393f816b5ce2c953151a78e0c0a8ae3d054438e24be6be")
    ]
)
