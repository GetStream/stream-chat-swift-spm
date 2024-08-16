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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.62.0/StreamChat.zip",
                      checksum: "e8f50dc795bff5c07eda9d38bdc72d2948542004f2c449df785ea26268988ca0"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.62.0/StreamChatUI.zip",
                      checksum: "615e06259887cb783f46bbb75b5435d57b343e9c8b82675911038978ee4ca6b4")
    ]
)
