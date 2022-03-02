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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.11.0/StreamChat.zip",
                      checksum: "3340fc7d2b4ed20b2e6cd3082d834ccd44249d036be65cf8dc2ed7671f10b88b"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.11.0/StreamChatUI.zip",
                      checksum: "c88fd572970c759e3187c5c2499a9fa3fc53eb015b20744135ab8d5440ad2ffe")
    ]
)
