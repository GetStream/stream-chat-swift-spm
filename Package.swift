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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.37.1/StreamChat.zip",
                      checksum: "4ae188506441027d51c9c1b79933e3a17510255a7c19e2cfa61e3d6eceb0b838"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.37.1/StreamChatUI.zip",
                      checksum: "bd7ecbc587e55c64c05eb1f495f4de6d0075664b4b832fb2bf089ff347009113")
    ]
)
