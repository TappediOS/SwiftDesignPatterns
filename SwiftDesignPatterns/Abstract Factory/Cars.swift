//
//  CarParts.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/17.
//

enum Cars: String {
    case compact = "golf"
    case sports = "model s"
    case suv = "VC"
}


struct Car {
    var carType: Cars
    var floor: Floorplan
    var suspension: Suspension
    var drive: Drivetrans
    
    func print() -> [String] {
        return [carType.rawValue, String(floor.seats), suspension.type.rawValue, drive.type.rawValue]
    }
}
