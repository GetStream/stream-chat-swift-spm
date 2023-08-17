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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.35.2/StreamChat.zip",
                      checksum: "96e2827335460cc16cf52a5ec1f0e2128d77779678b50ef14533c800a9dfa4f6"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.35.2/StreamChatUI.zip",
                      checksum: "b0ec019f90e5b6ef35173b5e85556b4e03791df52cc46d907df7860f6772031c")
    ]
)
