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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.26.0/StreamChat.zip",
                      checksum: "81c5fa12d83bf2d807ba7fea16492163f37eb5b2fd7635f55a343f2f6ca279b9"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.26.0/StreamChatUI.zip",
                      checksum: "148aaa5d2f6782fd2bb0fa5710873a508609b68a8cd2456398f06544ab2f1364")
    ]
)
