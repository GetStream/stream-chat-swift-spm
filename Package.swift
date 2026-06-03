// swift-tools-version:5.9

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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.101.0/StreamChat.zip",
                      checksum: "721b233d0eae82558c2aced9df9c2997452c51f2c6757ed0d696a96ce6da5e4b"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.101.0/StreamChatUI.zip",
                      checksum: "66a22669770c6e6069360b0119df235a4f6b6d677b0fe98d7f6650edbeb6d287")
    ]
)
