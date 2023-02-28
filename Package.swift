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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.28.0/StreamChat.zip",
                      checksum: "2022a248950aa1d578a49adf4a5d072a7d58dba2e75f74ff543d4e5e1bc63dff"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.28.0/StreamChatUI.zip",
                      checksum: "076bd14400a7d21facfa3ba3c5acc70173e18c11584ef11647d5420215aa5597")
    ]
)
