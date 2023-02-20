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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.27.1/StreamChat.zip",
                      checksum: "b4e2b026e2ec2bf9b811890a900c561408908a7645bd71f157e4284e7babf8cf"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.27.1/StreamChatUI.zip",
                      checksum: "4e095f2d08fb290d6b87ea3ce7212d626447667101b6022d25b0b784c7b612f7")
    ]
)
