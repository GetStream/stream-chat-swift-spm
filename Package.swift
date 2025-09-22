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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.89.0/StreamChat.zip",
                      checksum: "056b76a84233fda7fb0714dd37357f296bfbea6752fa182ae9c201756e5d1ab9"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.89.0/StreamChatUI.zip",
                      checksum: "f30dc348b7db3b5b552342abae121c5009461efe4c8c84aacc94002b745efcd1")
    ]
)
