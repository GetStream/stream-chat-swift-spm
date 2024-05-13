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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.55.0/StreamChat.zip",
                      checksum: "cad122fc577f636af0a907e99dab69e42fd2dec601504239a2f112d306afefe1"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.55.0/StreamChatUI.zip",
                      checksum: "f0abd674eaea4aacd88ecc557a1cca5b80069a9d6b13fd764a31b93aa2668cb4")
    ]
)
