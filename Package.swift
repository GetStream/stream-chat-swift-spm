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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.32.0/StreamChat.zip",
                      checksum: "c9afceefcb9a69446fab44e566c119fb2afcc6082e997615ce82d38ca58d73a2"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.32.0/StreamChatUI.zip",
                      checksum: "fa2d1605cca550808216b2f0272a9d80ae0dde8c2397e2d79d7e983c31390b66")
    ]
)
