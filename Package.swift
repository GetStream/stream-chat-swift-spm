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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.97.0/StreamChat.zip",
                      checksum: "f398454b2e96db8c117ffe2b4e1d10d3ab4827f0bd3b45b94520897c9bd3308b"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.97.0/StreamChatUI.zip",
                      checksum: "704f2c43aa7ad537e01196196e058a016091a40f1197b7fa504b71b8a1d50dce")
    ]
)
