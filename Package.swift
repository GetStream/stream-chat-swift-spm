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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.16.0/StreamChat.zip",
                      checksum: "289a41e325d17c2800f1aec65ed44095234c331e959bde0b0ec507a00b0f8e7f"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.16.0/StreamChatUI.zip",
                      checksum: "b173c86cec14b5fa70bf8ca41b6237808680d67c68072cf2ddfad862387e298d")
    ]
)
