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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.68.0/StreamChat.zip",
                      checksum: "fbefb930eaea49772933b8759e647fbf0d632539570a560357bdbfb3ddae7c89"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.68.0/StreamChatUI.zip",
                      checksum: "38fe15eacc0e38cda74765a7ab7f1c0c3490c3094e9fc5c8399448ebca231585")
    ]
)
