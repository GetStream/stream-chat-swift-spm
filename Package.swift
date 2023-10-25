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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.40.0/StreamChat.zip",
                      checksum: "900fd9773994b2378b4610b46358e6e2d3ba52aeef9aa0804547ddc10af2bc13"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.40.0/StreamChatUI.zip",
                      checksum: "b0d970b1055f5b1090c58900fbc1ae17276020c06fb173e7e94db3d76b1ea7c4")
    ]
)
