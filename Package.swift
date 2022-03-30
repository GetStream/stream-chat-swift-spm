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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.13.0/StreamChat.zip",
                      checksum: "e65e2ffa2dd6f9d9078cbf0e11e110462d0045c0d394705cb66b238af137ef16"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.13.0/StreamChatUI.zip",
                      checksum: "4ee91ed049e8eccc6ef54c930cd5d2fe67442ed5fb515ca07e77997694760378")
    ]
)
