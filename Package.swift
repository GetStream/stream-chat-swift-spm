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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.72.0/StreamChat.zip",
                      checksum: "b7b943463f73401bf4925c85958684007187c097e78e6adb0b2f1aca6eb4681b"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.72.0/StreamChatUI.zip",
                      checksum: "5e9338955fcbbcb9d8aa4a2dcd546684bf634814b859549d1a1bcb301d6d9b5a")
    ]
)
