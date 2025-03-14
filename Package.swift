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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.74.0/StreamChat.zip",
                      checksum: "1d30024a0b32d1d622922175df153c0a546e4ec86426164d2e3f7fef94e9df65"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.74.0/StreamChatUI.zip",
                      checksum: "9f2273846f59de965fc845ff0deda77bdc45d4201c0b3f47784423aa2602a9b6")
    ]
)
