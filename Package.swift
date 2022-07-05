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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.18.0/StreamChat.zip",
                      checksum: "ea4f909c59f65ce2ae5d8645a78a69018779d59115bae2ba1d6600674ea4f5eb"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.18.0/StreamChatUI.zip",
                      checksum: "ce0910a0816418838bd6351a00ca3a04ece0d3a49693c9b13a90fc79fdf11229")
    ]
)
