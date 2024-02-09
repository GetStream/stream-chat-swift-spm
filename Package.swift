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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.48.0/StreamChat.zip",
                      checksum: "84cb76ed0a341d6385790f2697d0f61d2aa65061e9f397af9e29ea357568ae52"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.48.0/StreamChatUI.zip",
                      checksum: "f8a55a0efd59ecac455f9b9da47ad8ccc7a8b088c2983b2b437057daa0b40537")
    ]
)
