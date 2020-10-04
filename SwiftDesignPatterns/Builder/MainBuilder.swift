//
//  MainBuilder.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/04.
//

class MainBuilder {
    
    static func main() -> String {
        var builder = BurgerBuilder()
        builder.setmayo(choice: true)
        
        let order = builder.buildObject(name: "Joe")
        return order.printDescription()

    }
}
