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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.25.1/StreamChat.zip",
                      checksum: "665b46715211f0e4954ef8bf5f46558dc227ea97f434a2b41d31c64e3fbab294"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.25.1/StreamChatUI.zip",
                      checksum: "7e2db7de9a42f1e0d7d213b2709f9ce1d5c22f6ad6d50c9762ed2ca1d7f3bfec")
    ]
)
