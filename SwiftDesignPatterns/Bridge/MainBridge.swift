//
//  MainBridge.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/18.
//

import Foundation


class MainBridge {
    static func main() -> [String] {
        var clearChannel = Landline()
        var secureChannel = SecureLandline()
        var comms = Communicator(clearChannel: clearChannel, secureChannel: secureChannel)
        
        return [comms.sendClearTextMessage(message: "Hello"), comms.sendSesureMessage(message: "this is secure")]
    }
}
