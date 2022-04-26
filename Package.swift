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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.14.0/StreamChat.zip",
                      checksum: "7bb0aeeeb0e9c5eea9cc94908b9c0d94cb52550215a6d18b54494cec51168be7"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.14.0/StreamChatUI.zip",
                      checksum: "92451f3b0122b9ba108cee86a85fcfbfeaef5cb82a13a30223dbc30303fded62")
    ]
)
