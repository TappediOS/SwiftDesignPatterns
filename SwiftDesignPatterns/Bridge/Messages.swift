//
//  Messages.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/18.
//

protocol Message {
    init(message: String)
    var contentToSend: String { get }
    func prepareMessage()
}

class ClearMessage: Message {
    private var message: String
    
    required init(message: String) {
        self.message = message
    }
    
    func prepareMessage() {
        
    }
    
    var contentToSend: String {
        return self.message
    }
}

class EncryptedMessage: Message {
    private var clearText: String
    private var cipherText: String?
    
    required init(message: String) {
        self.clearText = message
    }
    
    func prepareMessage() {
        self.cipherText = String(self.clearText.reversed())
    }
    
    var contentToSend: String {
        return self.cipherText ?? ""
    }
}

class PriorityMessage: ClearMessage {
    override var contentToSend: String {
        return "Important: " + super.contentToSend
    }
}
