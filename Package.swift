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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.54.0/StreamChat.zip",
                      checksum: "339b0e048e93ecc102c2ec3a1f83bb9b383b2e918e0a24000b98615a89c68a42"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.54.0/StreamChatUI.zip",
                      checksum: "ffcb73cf98c0e53bb5b364cf233c263eedcf12e9d3562be96819db3ccfc4c38e")
    ]
)
