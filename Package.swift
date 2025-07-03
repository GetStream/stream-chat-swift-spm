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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.81.0/StreamChat.zip",
                      checksum: "94ed060e0f7b926f2982c3129d0fd0ac504ffc35cb0707fac0538515cb2633cf"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.81.0/StreamChatUI.zip",
                      checksum: "93f7512b7c10ab481df8ee79114fe5ac2f5cf7fa646a8eb71b81d954da17c33b")
    ]
)
