//
//  RentalCar.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/05.
//

class RentalCar {
    private var nameBV: String
    private var passengerBV: Int
    private var priceBV: Float
    
    init(name: String, passenger: Int, price: Float) {
        self.nameBV = name
        self.passengerBV = passenger
        self.priceBV = price
    }
    
    final var name: String { get { return self.nameBV }}
    final var passenger: Int { get { return self.passengerBV }}
    final var price: Float { get { return self.priceBV }}

    static func create(passenger: Int) -> RentalCar? {
        var car: RentalCar?
        switch passenger {
        case 0...3: car = Compact()
        case 4...8: car = SUV()
        default: car = nil
        }
        return car
    }
}

class Compact: RentalCar {
    init() {
        super.init(name: "VW", passenger: 3, price: 20)
    }
    
    
}

class SUV: RentalCar {
    init() {
        super.init(name: "Cadillac", passenger: 8, price: 75)
    }
}
