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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.99.2/StreamChat.zip",
                      checksum: "58899f3ed82f4552ae4a129ac5493748b9cb64bffc843d044c114fe40c29921b"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.99.2/StreamChatUI.zip",
                      checksum: "648a0c5212fc155791009574dc673441768d363ed2e151bb7c46246d02ac1c89")
    ]
)
