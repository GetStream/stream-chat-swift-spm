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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.99.0/StreamChat.zip",
                      checksum: "f747b58b835a26975c614ffa488dac6b2ad1579ee87515ca14619043c7842a1c"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.99.0/StreamChatUI.zip",
                      checksum: "05f4806a5c847cdf2cb456a2a97094aa912e32b0e853ce2afe917e00755862c4")
    ]
)
