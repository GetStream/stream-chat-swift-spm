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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.91.0/StreamChat.zip",
                      checksum: "580f7102c4273e3486e95c32d246f34fed8df7e3eb20a9d06820f95b263ee093"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.91.0/StreamChatUI.zip",
                      checksum: "3d39ffd8b2bb594a0056fa8bb63d6cef856c8b8f92bc358d4499c24b6b86564f")
    ]
)
