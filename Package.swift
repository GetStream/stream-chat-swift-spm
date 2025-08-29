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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.87.0/StreamChat.zip",
                      checksum: "e326394027059e0a656daf928fef47b64f3b4d14d4679b62c5e612c298c75526"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.87.0/StreamChatUI.zip",
                      checksum: "f4d153fc49519f4117421a906479dd4bbe204b2afe213271963377f9c1a76757")
    ]
)
