//
//  Food.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/04.
//

struct Food {
    let customerName: String
    let veggieProduct: Bool
    let patties: Int
    let pickeles: Bool
    let mayo: Bool
    let ketchup: Bool
    let lettuce: Bool
    let cook: Cooeked
    
    enum Cooeked: String {
        case rare = "rare"
        case normal = "normal"
        case welldone = "well done"
    }
    
    init(name: String, veggie: Bool, patties: Int, pickeles: Bool, mayo: Bool, ketchup: Bool, lettuce: Bool, cook: Cooeked) {
        self.customerName = name
        self.veggieProduct = veggie
        self.patties = patties
        self.pickeles = pickeles
        self.mayo = mayo
        self.ketchup = ketchup
        self.lettuce = lettuce
        self.cook = cook
    }
    
    func printDescription() -> String {
        return customerName + veggieProduct.description + patties.description + pickeles.description + mayo.description + ketchup.description + lettuce.description + cook.rawValue
        
    }
}
