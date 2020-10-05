//
//  Backup.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/05.
//

import Foundation

class DataItem {
    
    enum type: String {
        case email = "Email"
        case phone = "Phone"
        case card = "card"
    }
    
    var type: type
    var data: String
    
    init(type: type, data: String) {
        self.type = type
        self.data = data
    }
}

class Backup {
    let name: String
    private var data: [DataItem] = Array()
    
    init(name: String) {
        self.name = name
        Logger.shared.log(msg: "Create name = \(self.name)")
    }
    
    func backup(item: DataItem) {
        self.data.append(item)
        Logger.shared.log(msg: "\(name) backup item: \(item.type.rawValue)")
    }
    
    func getData() -> [DataItem] {
        return self.data
    }
}
