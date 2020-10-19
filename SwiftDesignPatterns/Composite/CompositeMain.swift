//
//  CompositeMain.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/19.
//


class CompositeMain {
    static func main() -> String {
        let doorWindow = CompositePart(name: "Door Window", parts: [Part(name: "Window", price: 100), Part(name: "WindowSub", price: 23)])
        let door = CompositePart(name: "Door", parts: [Part(name: "Window", price: 43), Part(name: "Door Loom", price: 500), Part(name: "Handle", price: 9000)])
        
        let hood = Part(name: "Hood", price: 320)
        
        let order = CustomerOrder(cus: "bob", parts: [hood], composites: [doorWindow, door])
        
        return order.printDetail()
    }
}
