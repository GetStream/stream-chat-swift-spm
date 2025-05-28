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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.79.0/StreamChat.zip",
                      checksum: "6e141cb7abda1461648c3c49c7a9a143416c36a85a1a3ef3a245e61f97d21b57"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.79.0/StreamChatUI.zip",
                      checksum: "37e51466dd6d5768b3da7c11298775459011080430eda00b392a2297cf89c663")
    ]
)
