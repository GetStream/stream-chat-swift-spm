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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.21.0/StreamChat.zip",
                      checksum: "6ef43c7d10201a9228b34b9df80a556f2574a040b402720e83f42aa4cb9e596e"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.21.0/StreamChatUI.zip",
                      checksum: "010c0c6a61c3af26c27db40b3544ac243b9c0451a916683b6f0cbe71b02fc2b4")
    ]
)
