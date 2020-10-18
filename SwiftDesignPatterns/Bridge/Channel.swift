//
//  Channel.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/18.
//


class Landline: ClearMessageChannel {
    func send(message: String) -> String {
        return "LandLine: "  + message
    }
}

class SecureLandline: SecureMessageChannel {
    func sendEncryptedMessage(encryptedText: String) -> String {
        return "Secure Landline: " + encryptedText
    }
}

class Wireless: ClearMessageChannel {
    func send(message: String) -> String {
        return "Wireless: " + message
    }
}

class SecureWireless: SecureMessageChannel {
    func sendEncryptedMessage(encryptedText: String) -> String {
        return "Secure Wireless: " + encryptedText
    }
}
