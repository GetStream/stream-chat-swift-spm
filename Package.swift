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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.67.0/StreamChat.zip",
                      checksum: "cbd23a0163b36a34b4f5b9794b8986731e54f3063e11ec4e3670fa7568d83e05"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.67.0/StreamChatUI.zip",
                      checksum: "1d1cd9151885b7d48c8e18b4148defac16fe1590c3c23119dbec0c16c342a868")
    ]
)
