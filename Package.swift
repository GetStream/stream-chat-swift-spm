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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.71.0/StreamChat.zip",
                      checksum: "22e9d8faaa17c214fe5315900ddb8ed177b09a2d5927bb6fe3759dbed21b9256"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.71.0/StreamChatUI.zip",
                      checksum: "975750c9c5e796d1116aeb1c0e9fd6330a540d79f77e3ad6caf25d28e2548e4f")
    ]
)
