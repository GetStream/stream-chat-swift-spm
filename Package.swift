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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.59.0/StreamChat.zip",
                      checksum: "9e72381948d96aeae5597fc825730fd7934686229bac56493aed541f156b9b3e"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.59.0/StreamChatUI.zip",
                      checksum: "cf5e96b3d51ce9fa03879adfb2e25cb08ed8df6ca25d0bab9c9bb580b6c5353c")
    ]
)
