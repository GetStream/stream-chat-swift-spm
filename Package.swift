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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.96.0/StreamChat.zip",
                      checksum: "79842e9ee6bd62b138bd0598b4addcf25b91c25228b526d3d9f1c62fdff99417"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.96.0/StreamChatUI.zip",
                      checksum: "d9bf8a0a8016322b67440209aa49390ae22d753865bc5b0d862b97ce66d26b4c")
    ]
)
