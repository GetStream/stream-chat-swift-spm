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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.25.0/StreamChat.zip",
                      checksum: "450d7ee61206aaef7356ae65cb20097c74a36b3b122ddf97e8857c14e3c0e802"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.25.0/StreamChatUI.zip",
                      checksum: "ca6db5b98dbe6119117738e3eea83fa3b858bedd1fe205351543d3b6490f2395")
    ]
)
