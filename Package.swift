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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.23.0/StreamChat.zip",
                      checksum: "84879ebfd594b6822a2a4b07ee6bde298c3c6c8d6105fa8af521ef5ac267ba90"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.23.0/StreamChatUI.zip",
                      checksum: "1284af566e22492ac2b30a302b3495e5ef499edec4833bf5ab37e10a285b8fae")
    ]
)
