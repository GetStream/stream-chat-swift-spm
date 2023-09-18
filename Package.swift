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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.37.0/StreamChat.zip",
                      checksum: "9b1c6caefe72ab9b987e701f1487949ffe45f219051dc643b057642cd98e2beb"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.37.0/StreamChatUI.zip",
                      checksum: "ae05570e82b50d5e637d7f40e48729c2fe25569bb179305cea30d9ffdd9aee04")
    ]
)
