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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.47.0/StreamChat.zip",
                      checksum: "b345008d2c56c9ec5a0c51eacfdd519c4d3d3c68a7d605c4349d29052cda9c97"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.47.0/StreamChatUI.zip",
                      checksum: "595957a82bf5aba5f3ff24b5b9b7c7979da259f46f2348c9e43a373e9ddf499d")
    ]
)
