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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.33.0/StreamChat.zip",
                      checksum: "2af40b713f026e2283fd7691713580443392172e3804046cd3f3f1728a19c131"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.33.0/StreamChatUI.zip",
                      checksum: "7149e8e5a6c2be0dc50f0675b4d213201f6c9198ff9b604ce3ea12430268a214")
    ]
)
