//
//  Log.swift
//  Overlog
//
//  Copyright © 2017 Netguru Sp. z o.o. All rights reserved.
//

import Foundation

/// Default ASL log keys
private enum Keys: String {
    case timestamp = "CFLog Local Time"
    case sender = "Sender"
    case message = "Message"
}

/// Overlog log model
public struct Log {

    let timestamp: String
    let sender: String
    let message: String

    /// Log initializer
    ///
    /// - Parameters:
    ///   - raw: raw log dictionary returned by ASL
    init(raw log: [String: String]) {
        timestamp = log[Keys.timestamp.rawValue] ?? ""
        sender = log[Keys.sender.rawValue] ?? ""
        message = log[Keys.message.rawValue] ?? ""
    }

}
