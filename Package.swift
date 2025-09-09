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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.88.0/StreamChat.zip",
                      checksum: "f6721ef22dcca5899e50146c35154dd550d70b9a4d0835071f43ad001349a221"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.88.0/StreamChatUI.zip",
                      checksum: "3a157dd833256e320a4a6ca4afffb54f7f0dcb3b97555c5c1268d2c87ed22006")
    ]
)
