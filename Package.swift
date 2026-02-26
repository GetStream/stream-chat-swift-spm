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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.98.0/StreamChat.zip",
                      checksum: "bad30a89ec010953ea063cfe66207e5bbda3b547d64bd475edff19bcc38cbf08"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.98.0/StreamChatUI.zip",
                      checksum: "3db579e89feaa400df327067210a545e90fbd3c3f443abca5ca80167747127d4")
    ]
)
