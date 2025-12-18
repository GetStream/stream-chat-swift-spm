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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.95.1/StreamChat.zip",
                      checksum: "510ae2e6eb1db52d61cfe26bd52d211fff18d5bde2f3013d271f323d0ca25f8a"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.95.1/StreamChatUI.zip",
                      checksum: "e3c23be52f2042d2b2c31adfd92385a97a4f31d0b113b71a1eb768bea6640e8d")
    ]
)
