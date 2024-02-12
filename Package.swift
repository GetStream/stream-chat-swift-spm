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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.48.1/StreamChat.zip",
                      checksum: "405ecb74e53026f937a1e36d4409eca6e775cccd9aa9bbf1bbd32147a5bc3ea3"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.48.1/StreamChatUI.zip",
                      checksum: "d53731d167ebae09829596f6f96d3deec4ba26024c7df2321cd086547e945b69")
    ]
)
