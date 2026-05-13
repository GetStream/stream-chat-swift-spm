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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.100.0/StreamChat.zip",
                      checksum: "75eceae8ee4e08bc34a41d5d36bc8d6d6b21283a03ce015608d602f17d6b8e5d"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.100.0/StreamChatUI.zip",
                      checksum: "c71f3961eaddd96c328f0d47d0d418ca7dcc03cd6357a0b4996bcf7c93f2d344")
    ]
)
