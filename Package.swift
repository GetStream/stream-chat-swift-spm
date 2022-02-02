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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.10.0/StreamChat.zip",
                      checksum: "ca7af74305efe2a2e9c93683fcd6b6e7cb9462f095a8ec83ff8819ee27de13e9"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.10.0/StreamChatUI.zip",
                      checksum: "88ecc434aef81369f66aae6dd46910e9d3f1a655a141a60978d381a586a3f1f6")
    ]
)
