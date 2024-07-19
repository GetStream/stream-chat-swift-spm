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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.60.0/StreamChat.zip",
                      checksum: "9cb09ccdb30864bc8b3e7646ddb5ea528415b96536f5c8b881f8707cf2a9fa6c"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.60.0/StreamChatUI.zip",
                      checksum: "7ab3e69f3624a0ddee171514a4bf5734056dc7a37bf3429a65a4eacdbac27059")
    ]
)
