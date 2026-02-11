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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.97.1/StreamChat.zip",
                      checksum: "989ca6f42b0b10794bc752054e5025b71fea5316eb8b60ca36f3fcf06a66b1fc"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.97.1/StreamChatUI.zip",
                      checksum: "280527d2a5313710140a487092527a3ba8885293abf9538cadd9f2d5acccaf04")
    ]
)
