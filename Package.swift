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
                      checksum: "b4c8a13383d425d7b57cfa4c800b3309594134a962b03c0ea12d229ac9f75548"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/2.6.1/StreamChatUI.zip",
                      checksum: "fdd77b81ad91320e1e0c4e8ba692dde84ca5bb39831507db26346b72e93db884")
    ]
)
