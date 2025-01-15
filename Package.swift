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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.70.0/StreamChat.zip",
                      checksum: "39f2bce840fb1f067566da3bcd1b201dfbc4ec36e8ce2bc393fb0d687545537e"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.70.0/StreamChatUI.zip",
                      checksum: "cbdce3b17aa623724584efb18fdbb3e3c3fd4c14f8889d229cd20b8e1577ee95")
    ]
)
