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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.45.0/StreamChat.zip",
                      checksum: "ea1ea945b1e052e8691c52ef22499b2e224f104cc6862eba6bc6f150c763a886"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.45.0/StreamChatUI.zip",
                      checksum: "2e576c8c10f102f398c6c548e73e7ea320121ca12a33978b0ef955d2853de505")
    ]
)
