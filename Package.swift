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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.63.0/StreamChat.zip",
                      checksum: "4361c902090cba9ce07b4844716a96fcfe4a6d366b1b9c71acc608043dab9f1c"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.63.0/StreamChatUI.zip",
                      checksum: "1de1d87b589ea32668e1ede43fbd0d9c71c05cac263063254415e71ec9932b53")
    ]
)
