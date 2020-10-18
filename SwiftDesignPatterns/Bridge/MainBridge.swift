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
        let comms = Communicator(clearChannel: bridge, secureChannel: bridge)
        
        
        return [comms.sendClearTextMessage(message: "Hello"), comms.sendSesureMessage(message: "this is secure")]
    }
}
