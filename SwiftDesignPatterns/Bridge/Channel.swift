//
//  Channel.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/18.
//


protocol Channel {
    func sendMessage(message: Message) -> String
}

class Landline: Channel {
    func sendMessage(message: Message) -> String {
        return "LandLine: "  + message.contentToSend
    }
}

class Wireless: Channel {
    func sendMessage(message: Message) -> String {
        return "Wireless: " + message.contentToSend
    }
}

class Satellite: Channel {
    func sendMessage(message: Message) -> String {
        return "Sattellite: " + message.contentToSend
    }
}
