// swift-tools-version:5.9

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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.90.0/StreamChat.zip",
                      checksum: "f8ca7d4957b90daeb4e3ef24cb71fbcbdaee6ae0cfe7fbfced5691a9b27933f4"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.90.0/StreamChatUI.zip",
                      checksum: "1535bd6cd4230aab616d7dd686413abc1b638a39e61486dafff7ba34ba4e20a0")
    ]
)
