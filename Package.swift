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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.75.0/StreamChat.zip",
                      checksum: "d518a2774af2f06d9e740f6fb0e6959af67c04b7dd218b6c8c18a0eaf37e56af"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.75.0/StreamChatUI.zip",
                      checksum: "4e4d2058f30a4032fea49a220fd146092ac9c57d3a5ef7ac27dd4d5793a02f21")
    ]
)
