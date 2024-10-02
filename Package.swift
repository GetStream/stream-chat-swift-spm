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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.64.0/StreamChat.zip",
                      checksum: "b453334850cfe777d909ce78c5606d632f11f42f46e628a3979098e7b58a7b2c"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.64.0/StreamChatUI.zip",
                      checksum: "20d415fbbbeffa3737b1054868ce485fb3149474a3422987ef8d5d4d1ba027e9")
    ]
)
