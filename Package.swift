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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.95.0/StreamChat.zip",
                      checksum: "77d8202347535839fea26962a6f11b9bfdd53155c1591d492928151df3bf4bd8"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.95.0/StreamChatUI.zip",
                      checksum: "ba63e32b19368de0fcb5bbbc9d8e6a60226218210e73a8ccf372bf2aed0a00ba")
    ]
)
