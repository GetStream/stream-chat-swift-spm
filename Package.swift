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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.79.1/StreamChat.zip",
                      checksum: "5dacbce47eed3373cc64b741a0c3cf334ceaf03cba519ef563ab183f061d24e8"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.79.1/StreamChatUI.zip",
                      checksum: "8a515c3dcb27a557ca445d956bf9d72cb1a379489b27c74d9374531c5f85bb94")
    ]
)
