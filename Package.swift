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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.15.1/StreamChat.zip",
                      checksum: "f5d1d4c2065a5a008af8052fccc33b3dad9cab7bbd8483535a6df352c69cc01a"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.15.1/StreamChatUI.zip",
                      checksum: "bd7925c76e5a7f48774fb6bb3b77ad5f5c00e986026b44ff340ca0511b409514")
    ]
)
