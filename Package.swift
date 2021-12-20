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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.6.0/StreamChat.zip",
                      checksum: "9a1b3e5fc83e938f855a17a958723c335b674380ced2342964aa0755a76817fc"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.6.0/StreamChatUI.zip",
                      checksum: "acaa43965ce3c23349fbf77c105d91e8ce7d0280e63769b0e3624dd02641a614")
    ]
)
