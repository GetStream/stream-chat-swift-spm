// swift-tools-version:5.9

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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.102.1/StreamChat.zip",
                      checksum: "7d75c49b43d3c282c42a0b571a1f5a3b766d55bd17bc800192b06ed0df011360"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.102.1/StreamChatUI.zip",
                      checksum: "eecf47b45e804629ef7735d5579262c70abaab2ca4a0017b7a4eb0b709bb4125")
    ]
)
