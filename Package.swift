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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.76.0/StreamChat.zip",
                      checksum: "ee692515af008c5de487eaca0745e52ebd36c26c6ac14cf881dc8023e9522d1e"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.76.0/StreamChatUI.zip",
                      checksum: "a2f44b42554b569160b1b616cd65739e0f8d29ed022bdbde32b4c62d2dfe719e")
    ]
)
