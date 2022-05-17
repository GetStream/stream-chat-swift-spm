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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.15.0/StreamChat.zip",
                      checksum: "0d21a406a2d161df4b017177bf01eeb5a5978e9700837d271d988deb48a2f951"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.15.0/StreamChatUI.zip",
                      checksum: "7477380c291c99c319475c1d39eac58b637f948dbcf5e1838c00c319f5252034")
    ]
)
