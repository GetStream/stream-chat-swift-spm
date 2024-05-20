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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.56.0/StreamChat.zip",
                      checksum: "2c16bdada3765a57376a1b8b9dd967621b847071e04c498c56419ffb35be36ae"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.56.0/StreamChatUI.zip",
                      checksum: "fd9391c5b086c55defc556d8c1aeafce52e52c0e6cfe632a29958274830d087d")
    ]
)
