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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.9.0/StreamChat.zip",
                      checksum: "6ad113eac22d0ae676150b938aes0a589c2f3c205d9f0b9a8eca2461419ec764"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.9.0/StreamChatUI.zip",
                      checksum: "6ad113eac22d0ae676150b938ae80a589c2f3c205d9f0b9a8eca2461419ecss4")
    ]
)
