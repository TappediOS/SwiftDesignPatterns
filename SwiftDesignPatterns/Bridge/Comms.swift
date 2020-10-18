//
//  Comms.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/18.
//

import Foundation

protocol ClearMessageChannel {
    func send(message: String) -> String
}

protocol SecureMessageChannel {
    func sendEncryptedMessage(encryptedText: String) -> String
}

class Communicator {
    private let clearChannel: ClearMessageChannel
    private let secureChannel: SecureMessageChannel
    
    init(clearChannel: ClearMessageChannel, secureChannel: SecureMessageChannel) {
        self.clearChannel = clearChannel
        self.secureChannel = secureChannel
    }
    
    func sendClearTextMessage(message: String) -> String {
        return self.clearChannel.send(message: message)
    }
    
    func sendSesureMessage(message: String) -> String {
        return self.secureChannel.sendEncryptedMessage(encryptedText: message)
    }
}
