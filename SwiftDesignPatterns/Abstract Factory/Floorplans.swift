//
//  Floorplans.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/17.
//

protocol Floorplan {
    var seats: Int { get }
    var engineOption: EngineOption { get }
}

enum EngineOption: String {
    case front = "front"
    case mid   = "mid"
}

class ShortFloorplan: Floorplan {
    var seats: Int = 2
    var engineOption: EngineOption = .mid
}

class StandardFloorplan: Floorplan {
    var seats: Int = 4
    var engineOption: EngineOption = .front
}

class LongFloorplan: Floorplan {
    var seats: Int = 8
    var engineOption: EngineOption = .front
}
