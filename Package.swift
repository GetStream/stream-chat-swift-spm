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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.58.0/StreamChat.zip",
                      checksum: "6b27323c2032b0b30fec7b0951f51efadd95827d7bcb8d997cf5138cf06cb0cd"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.58.0/StreamChatUI.zip",
                      checksum: "4b79f0cb473d1209ea8e38b7c030081073ba4641a6278f32043a02d0a34fa714")
    ]
)
