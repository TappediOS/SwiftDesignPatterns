//
//  Drivetrans.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/17.
//

protocol Drivetrans {
    var type: DriveOption { get }
}

enum DriveOption: String {
    case front = "front"
    case rear = "rear"
    case all = "4wd"
}

class FrontWeel: Drivetrans {
    var type: DriveOption = .front
    
    
}

class RearWeel: Drivetrans {
    var type: DriveOption = .rear
    

}

class AllWeel: Drivetrans {
    var type: DriveOption = .all
    
    
}
