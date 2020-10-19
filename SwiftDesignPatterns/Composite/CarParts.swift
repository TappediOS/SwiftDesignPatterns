//
//  CarParts.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/19.
//

class Part {
    let name: String
    let price: Float
    
    init(name: String, price: Float) {
        self.name = name
        self.price = price
    }
}

class CompositePart {
    let name: String
    let parts: [Part]
    
    init(name: String, parts: [Part]) {
        self.name = name
        self.parts = parts
    }
}
