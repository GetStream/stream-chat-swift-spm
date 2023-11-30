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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.44.0/StreamChat.zip",
                      checksum: "e85797a108f675eb6113f74af0b485d761ec84d0a8a73b06ae529b34a4f0189f"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.44.0/StreamChatUI.zip",
                      checksum: "672949f969a154e999047e6c12eebb55f6e1516b99c303db2462cc5838d08994")
    ]
)
