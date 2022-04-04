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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.13.1/StreamChat.zip",
                      checksum: "5f5552e6028cc8668376a1aa777396b7d995dee60d2b185908d99073aae73746"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.13.1/StreamChatUI.zip",
                      checksum: "fc8ed6525c3c449d38c5d25871b3617faa15f314a7c53ba92f7ddd95db0a1c4c")
    ]
)
