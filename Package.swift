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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.57.0/StreamChat.zip",
                      checksum: "018e536be43e3b02e36f39d1d2b00de7ee02d1221eaea032ca550636e74f50fb"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.57.0/StreamChatUI.zip",
                      checksum: "ea934f13ddf01c2cdba99acc4e1ffe615cc0abf9568f7acd5436e804f11e41e0")
    ]
)
