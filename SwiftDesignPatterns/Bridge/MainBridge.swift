//
//  MainBridge.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/18.
//

import Foundation


class MainBridge {
    static func main() -> [String] {
        
        let bridge = ComunicatorBridge(channel: Landline())
        let comms = Communicator(clearChannel: bridge, secureChannel: bridge, priorityChannel: bridge)
        
        print(comms.sendClearTextMessage(message: "abc"))
        print(comms.sendSesureMessage(message: "def"))
        print(comms.sendPriorityMessage(message: "ghi"))
        
        
        return [comms.sendClearTextMessage(message: "Hello"), comms.sendSesureMessage(message: "this is secure")]
    }
}
