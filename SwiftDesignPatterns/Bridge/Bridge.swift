//
//  Bridge.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/18.
//

class ComunicatorBridge: ClearMessageChannel, SecureMessageChannel, PriorityMessageChannel {
    private var channel: Channel
    
    init(channel: Channel) {
        self.channel = channel
    }
    
    func send(message: String) -> String {
        let message = ClearMessage(message: message)
        return self.sendMessage(message)
    }
    
    func sendEncryptedMessage(encryptedText: String) -> String {
        let message = EncryptedMessage(message: encryptedText)
        return self.sendMessage(message)
    }
    
    func sendPriorityMessage(message: String) -> String {
        let message = PriorityMessage(message: message)
        return sendMessage(message)
    }
    
    private func sendMessage(_ message: Message) -> String {
        message.prepareMessage()
        return self.channel.sendMessage(message: message)
    }
}
