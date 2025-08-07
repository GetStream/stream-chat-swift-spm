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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.84.0/StreamChat.zip",
                      checksum: "e39cd79b58186c41cead5170d5906cc3ae34ca72f48c6e549a1b9dab46a854eb"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.84.0/StreamChatUI.zip",
                      checksum: "1d82d97decdcb1f34fe4c856d03dc7691b3702aa2ec6c324173e7dfba60bb3b2")
    ]
)
