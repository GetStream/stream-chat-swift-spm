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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.78.0/StreamChat.zip",
                      checksum: "46cef9002eb2ea143dca52f33e4cf985c4bbc5eee74b6b222dcc6b58ac9ac969"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.78.0/StreamChatUI.zip",
                      checksum: "b358482bc51a6584a7cbcd4b63aab4f36fce2827cc7f91449f887ce660c5995c")
    ]
)
