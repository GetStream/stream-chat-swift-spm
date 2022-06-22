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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.17.0/StreamChat.zip",
                      checksum: "cf1c18a01ca5c1f6bf6cc2e9c1d4c8f3cf0eab383cd2f7a3125e382a02c3ef1e"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.17.0/StreamChatUI.zip",
                      checksum: "bb0026b4940999507ffdfe21592256acae76d6578b2a2818a9daec1783d33add")
    ]
)
