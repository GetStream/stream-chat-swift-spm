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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.20.0/StreamChat.zip",
                      checksum: "97d14d2daf0bb1a396de4bf4d9f9246b3f71d37b78c9ddf269ed96300ffe16e1"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.20.0/StreamChatUI.zip",
                      checksum: "28dcd26da22b0bc1acb4d2996aae137327a9ec9f70bbc90f9a93af418b05d337")
    ]
)
