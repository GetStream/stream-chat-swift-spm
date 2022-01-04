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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.8.0/StreamChat.zip",
                      checksum: "3706c3ad4b9737dc98b7f06afa1fd48a74c723f450b542199f3b75a277837295"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.8.0/StreamChatUI.zip",
                      checksum: "f503331ae30c7e784c87c32d5270217ebb79dd7ead2fc067ac10037fc8d747ec")
    ]
)
