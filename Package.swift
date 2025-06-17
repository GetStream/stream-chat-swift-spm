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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.80.0/StreamChat.zip",
                      checksum: "5917d0f5fde13137e4ab817a950e87cebcabbc626dcfae39c48bbf1649a98c96"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.80.0/StreamChatUI.zip",
                      checksum: "84b11bdd3a3f76cbdac109d5339ee7e4b3b1f09c86a087b8b17586f938c30d73")
    ]
)
