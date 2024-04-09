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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.52.0/StreamChat.zip",
                      checksum: "ee1a108a0099796cc7168d2dd01c9a49d53034e1154ccf26205147b12a673ea7"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.52.0/StreamChatUI.zip",
                      checksum: "af6307b965e0b59747919f38a426ab5173197219dc195917293e486d505f2a25")
    ]
)
