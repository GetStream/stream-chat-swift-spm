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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.99.1/StreamChat.zip",
                      checksum: "d37b182f9acb6f1d7dfa1ac141da9286052652fb3982b3ac00e7edb42143d4ae"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.99.1/StreamChatUI.zip",
                      checksum: "a8253bef0ee0ed3f2187434c9758c8c506e615100e5ef4619289265a37da0b35")
    ]
)
