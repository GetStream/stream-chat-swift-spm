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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.35.1/StreamChat.zip",
                      checksum: "9833887eb974e288901729db708122826cbf6bb2ce2acad077a03d09c9f2abf5"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.35.1/StreamChatUI.zip",
                      checksum: "1dd9e9abc4e31dd2a3bca58475101b1e389881f829616a2e459b0d233bd2c883")
    ]
)
