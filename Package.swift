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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.29.0/StreamChat.zip",
                      checksum: "f29d9bec057b1214dc4986080f02c0a00fc59c091681db28a4297755129ee8b4"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.29.0/StreamChatUI.zip",
                      checksum: "33b9d479edf072abf39da93603cd3e3cf26e8e9d2dc391da99776e74dd200122")
    ]
)
