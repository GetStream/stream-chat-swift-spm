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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.101.2/StreamChat.zip",
                      checksum: "2f6dd943866f68ffd3b70cabd4147d17bd17601621ba4babc19af07b65b3a1ae"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.101.2/StreamChatUI.zip",
                      checksum: "f76da37068593f46978b83a082d16e163650c35b2be0a50d149c74f6a7ddcc9c")
    ]
)
