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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.94.0/StreamChat.zip",
                      checksum: "3e03f94cda712e87c1dabc95dc08ce6610eb7245ff52b6a8969d6e30fbfdfbde"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.94.0/StreamChatUI.zip",
                      checksum: "eb0d7649eda3c76772369bd02c1a38f23e0134ab0d28594e4b83c69304281a72")
    ]
)
