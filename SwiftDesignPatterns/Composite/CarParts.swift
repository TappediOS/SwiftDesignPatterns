//
//  CarParts.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/19.
//

protocol CarPart {
    var name: String { get }
    var price: Float { get }
}

class Part: CarPart {
    let name: String
    let price: Float
    
    init(name: String, price: Float) {
        self.name = name
        self.price = price
    }
}

class CompositePart: CarPart {
    let name: String
    let parts: [CarPart]
    
    var price: Float {
        return self.parts.reduce(0) { (subtotal: Float, part: CarPart) in
            return subtotal + part.price
        }
    }
    
    init(name: String, parts: [CarPart]) {
        self.name = name
        self.parts = parts
    }
}
