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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.51.0/StreamChat.zip",
                      checksum: "74850d2b5feb1404f87f75fb1c20583da436631e67defb9ce6173bdd12761e8a"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.51.0/StreamChatUI.zip",
                      checksum: "759ab04375e86129f9fed48c4f0a9cb662cc2457c79d42ddb2b3efef4604a418")
    ]
)
