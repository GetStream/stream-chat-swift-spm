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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.101.1/StreamChat.zip",
                      checksum: "0889029f988144100b5e16def928b086c2496e0faab99eab9dd0e24cf527a261"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.101.1/StreamChatUI.zip",
                      checksum: "71f6d0c5331bdebeaec57541c37b74367dd0b190ff079020a85701ffe06b6cf4")
    ]
)
