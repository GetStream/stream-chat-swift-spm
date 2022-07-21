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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.19.0/StreamChat.zip",
                      checksum: "6d8abb149ded62350f65a45b490a1c226cafe0bcb7215253593254f74e451d2c"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.19.0/StreamChatUI.zip",
                      checksum: "8f39d4f8f87943358aba3f94b29aa0d6d9b90ed568994931ba822a356a0b93cb")
    ]
)
