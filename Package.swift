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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.35.0/StreamChat.zip",
                      checksum: "3ee8914bd762cece22542a3323889d6b160d7acbcb6debbdb4b17568d79a8d53"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.35.0/StreamChatUI.zip",
                      checksum: "ebf137e7244ed5ca21278b70e0737878d0f56fef0ee5c82e036e2cd20697b1f7")
    ]
)
