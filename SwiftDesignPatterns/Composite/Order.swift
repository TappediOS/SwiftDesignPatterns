//
//  Order.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/19.
//

import Foundation

class CustomerOrder {
    let customer: String
    let parts: [CarPart]
    let compositeParts: [CompositePart]
    
    init(cus: String, parts: [CarPart], composites: [CompositePart]) {
        self.customer = cus
        self.parts = parts
        self.compositeParts = composites
    }
    
    var totalPrice: Float {
        let partReduce = { (subtotal: Float, part: CarPart) -> Float in
            return subtotal + part.price
        }
        
        let total = parts.reduce(0, partReduce)
        
        return compositeParts.reduce(total) { (subtotal, cpart) -> Float in
            return cpart.parts.reduce(subtotal, partReduce)
        }
    }
    
    func printDetail() -> String {
        return "Order for " + customer + ": Cost: " + String(totalPrice)
    }
}
