//
//  CarSelecter.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/05.
//

class CarSelecter {
    static func selectCar(passenger: Int, days: Int) -> Float? {
        let car = RentalCar.create(passenger: passenger)
        return car == nil ? nil : car!.price * Float(days)
    }
}
