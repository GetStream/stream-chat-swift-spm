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
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.24.0/StreamChat.zip",
                      checksum: "784c7e579f731633897d9444468353b45a61221f354088923536c34c7bfc7dc4"),
        .binaryTarget(name: "StreamChatUI",
                      url: "https://github.com/GetStream/stream-chat-swift/releases/download/4.24.0/StreamChatUI.zip",
                      checksum: "0a8b40d567e0a0d755dd0311f1d534c06e8ca279e173fe5f60954e5a42beb1ba")
    ]
)
