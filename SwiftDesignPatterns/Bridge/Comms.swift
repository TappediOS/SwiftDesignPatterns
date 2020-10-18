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


protocol PriorityMessageChannel {
    func sendPriorityMessage(message: String) -> String
}


class Communicator {
    private let clearChannel: ClearMessageChannel
    private let secureChannel: SecureMessageChannel
    private let priorityChannel: PriorityMessageChannel
    
    init(clearChannel: ClearMessageChannel, secureChannel: SecureMessageChannel, priorityChannel: PriorityMessageChannel) {
        self.clearChannel = clearChannel
        self.secureChannel = secureChannel
        self.priorityChannel = priorityChannel
    }
    
    func sendClearTextMessage(message: String) -> String {
        return self.clearChannel.send(message: message)
    }
    
    func sendSesureMessage(message: String) -> String {
        return self.secureChannel.sendEncryptedMessage(encryptedText: message)
    }
    
    func sendPriorityMessage(message: String) -> String {
        return self.priorityChannel.sendPriorityMessage(message: message)
    }
}
