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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.93.0/StreamChat.zip",
                      checksum: "18f9285e55357d8934a02eca0c0b77e3f5ed055e3f73cd4a8139ce5c8e1026c0"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.93.0/StreamChatUI.zip",
                      checksum: "c37b6122f96b779c35f82b8c91edbe4fc7ce39cea5913026315eba6994c6ecde")
    ]
)
