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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/2.6.1/StreamChat.zip",
                      checksum: "97257a1f465eb1a4e2287c44e6a76aca3162971e34b84dd85deb9181ed7a447b"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/2.6.1/StreamChatUI.zip",
                      checksum: "fe1c0d0d8e9c64d1692d016c70139411033a94d20ad44a98a9aad1da84c31ec0")
    ]
)
