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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.82.0/StreamChat.zip",
                      checksum: "cdd9155e8117e6488ca87ae6913bcfda124114d8ebc6e7f62f6090db01c855be"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.82.0/StreamChatUI.zip",
                      checksum: "5ce2701f70ba5a29a6e2d23732f00430dee8eeb9e8b0400db98a00f91047b023")
    ]
)
