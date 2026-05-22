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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.100.1/StreamChat.zip",
                      checksum: "ddc97b33dfc89dd24f1087345517a5b9a6e6d5670af0c72fe1a245c1dc06f7a2"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.100.1/StreamChatUI.zip",
                      checksum: "0a7973d7f1d0c50b264e8be9e938858ce9e1a5fc110eb02db9a66ebda4f2c1ed")
    ]
)
