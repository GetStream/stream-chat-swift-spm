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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.47.1/StreamChat.zip",
                      checksum: "199908cde19baa4057451b152085a865a2f8f6f10a124b8481c129946c64d386"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.47.1/StreamChatUI.zip",
                      checksum: "f66da29edbe289cb0c29edfdecdc3b252db61eddc59836a8625ca954ef147949")
    ]
)
