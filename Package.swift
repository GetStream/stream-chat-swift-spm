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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.27.0/StreamChat.zip",
                      checksum: "99e812a0a44d300315d915f8afb495d420bc2c7b3684559d4f03500bac78bac2"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.27.0/StreamChatUI.zip",
                      checksum: "e8d75195cfab86cb71f29dd135ee49dc85a312d89474a22adbff3445e0a215f3")
    ]
)
