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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.77.0/StreamChat.zip",
                      checksum: "91c788de37775e0ab0faac3bd6d6216805be1e5fb210c75272a3d68f103c5fb4"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.77.0/StreamChatUI.zip",
                      checksum: "147b8dfa2eb4a5c725786d8446dc58c933e537433709336ef351c409536aa5f1")
    ]
)
