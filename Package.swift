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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.7.0/StreamChat.zip",
                      checksum: "6ad113eac22d0ae676150b938ae80a589c2f3c205d9f0b9a8eca2461419ec764"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.7.0/StreamChatUI.zip",
                      checksum: "7c4fc132092dfed081c130ebd2ad767c0fb99af81364eccfb23ab602c6784dbe")
    ]
)
