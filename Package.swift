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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.73.0/StreamChat.zip",
                      checksum: "c4888715685f8ed7ff2d7833d909e85c5914034433a41426a26c060f1a298e3d"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.73.0/StreamChatUI.zip",
                      checksum: "4c85e9b22fd991d319015fbce57234c09223a9741dd9732c5578c4bf93755232")
    ]
)
