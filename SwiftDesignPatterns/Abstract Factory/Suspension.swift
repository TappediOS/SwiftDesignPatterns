//
//  Suspension.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/17.
//

protocol Suspension {
    var type: SuspensionOption { get }
}

enum SuspensionOption: String {
    case standard = "standard"
    case sport = "sport"
    case soft = "soft"
}

class RoadSus: Suspension {
    var type: SuspensionOption = .standard
}

class OffRoeaSus: Suspension {
    var type: SuspensionOption = .soft
}

class RaceSus: Suspension {
    var type: SuspensionOption = .sport
}
