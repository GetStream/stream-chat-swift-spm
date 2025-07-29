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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.83.0/StreamChat.zip",
                      checksum: "62fc45ee7a7112b4690f31ede560602938e9392d241d877ac7dd1d26428f104f"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.83.0/StreamChatUI.zip",
                      checksum: "7a303edfcdc90b7a13a2297b952f445e0def368a67d7872a0386c7fa7ea9e4bb")
    ]
)
