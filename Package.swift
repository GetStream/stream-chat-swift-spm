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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.36.0/StreamChat.zip",
                      checksum: "2a7c0d54483eab36cb6fb9ffc62578445ce55c3ceb02a5a521311817434822a7"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.36.0/StreamChatUI.zip",
                      checksum: "1cfd5343b34a915e83aaf13056a43942f7c953521d8521596d3efac2ac4ed4a9")
    ]
)
