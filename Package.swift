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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/2.6.1/StreamChat.zip",
                      checksum: "51c80feb1c106bcabbf5bb183a92e385d393be32b629cdf806edf238b98ccb18"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/2.6.1/StreamChatUI.zip",
                      checksum: "0b335af899e6eb644220772fdb69b04801d15899d7f5528805e9e515c9efd201")
    ]
)
