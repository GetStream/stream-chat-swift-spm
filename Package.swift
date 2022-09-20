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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.21.2/StreamChat.zip",
                      checksum: "7af041cb3c8bdcefc6f83731a067e8e688b9c8c3d5a6651b20f23fd857a3e191"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.21.2/StreamChatUI.zip",
                      checksum: "c0454c19c353dd8a7ae234f98843f15b5335a104081f18ce7c57b5a2678fc3a4")
    ]
)
