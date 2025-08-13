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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.85.0/StreamChat.zip",
                      checksum: "6cce4412d0f158b6dc60f430dbe261713902a3eec007a221790156058e1ca244"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.85.0/StreamChatUI.zip",
                      checksum: "cb5d8dc45af62a3f2bea921505ea771803b218ca3ff6eab6617d87112247e74f")
    ]
)
