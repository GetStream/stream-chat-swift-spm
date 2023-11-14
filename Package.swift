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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.42.0/StreamChat.zip",
                      checksum: "4c035e9834a00200296fb34071049ee9eeaef5c04ee75e9e2b42d72a7e6bc8ef"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.42.0/StreamChatUI.zip",
                      checksum: "4e16262dbe26812f9ec6668603eb137135bf04bbe66406082280ee62b78ca12f")
    ]
)
