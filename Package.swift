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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.56.1/StreamChat.zip",
                      checksum: "2b2d54df1bbd1a5995666a298d3d5e510b0bfa412abb7da3f824e74c64688961"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.56.1/StreamChatUI.zip",
                      checksum: "acb7d59c2fa0ecf8d6577ffdfba99caebbee13550a1d2560531ddc7695166d50")
    ]
)
