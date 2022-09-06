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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.21.1/StreamChat.zip",
                      checksum: "12f2f367144bbb6f3165cd48d33072bb3e5391cee40a14e98749b93bad90c399"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.21.1/StreamChatUI.zip",
                      checksum: "5ddabfd8ba9773c29bc4139578831671fa83b1da536f27d71d16c1c6b13512f7")
    ]
)
