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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.66.0/StreamChat.zip",
                      checksum: "4b7b4ea46fb56450c5a32323c77457d207494288db3322568baf95330190559a"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.66.0/StreamChatUI.zip",
                      checksum: "d69625f85e5ba9686aa73259d3bb3c7e4eb6df35ba2e969f98242bbc5d314d21")
    ]
)
