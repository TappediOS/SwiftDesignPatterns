//
//  MainSingleton.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/05.
//

import Foundation

class MainSingleton {
    
    static func main() -> [String] {
        let server = Backup(name: "😎")
        server.backup(item: DataItem(type: .card, data: "cardNum:1111"))
        server.backup(item: DataItem(type: .phone, data: "+8012345678"))
        
        Logger.shared.log(msg: "Backup 2 Item to \(server.name)")
        
        let other = Backup(name: "🏧")
        other.backup(item: DataItem(type: .email, data: "example.com"))
        
        Logger.shared.log(msg: "Backup 2 Item to \(other.name)")
        return Logger.shared.printLog()
    }
}
