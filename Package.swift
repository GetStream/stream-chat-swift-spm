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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.92.0/StreamChat.zip",
                      checksum: "7f66b7876ef3c732ed8f0310c3b826c6311b596dd63563516e4635a5a94049f1"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.92.0/StreamChatUI.zip",
                      checksum: "2967cd5ffbcac72081d9684da3138d19fede2d1f1fe5c9da913213d535806c8d")
    ]
)
