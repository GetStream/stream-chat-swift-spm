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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.65.0/StreamChat.zip",
                      checksum: "c0d396b19324b0dc323835a35b9b5931c9409490fdd9247d4a3c2906d9989028"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.65.0/StreamChatUI.zip",
                      checksum: "7e2150af4be2f5a325c0765e0f2406d36be975e7e4dca42bc66ac8e11bfa6047")
    ]
)
