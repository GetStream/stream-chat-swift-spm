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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.46.0/StreamChat.zip",
                      checksum: "3bd497a0514a42fd94168d28c68045e4d181bc18872fb2290f38174728ffd210"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.46.0/StreamChatUI.zip",
                      checksum: "4cf06c3f5cd491b1aa50ec718802de97bb118541e572c6fe70f89caac91f6e35")
    ]
)
