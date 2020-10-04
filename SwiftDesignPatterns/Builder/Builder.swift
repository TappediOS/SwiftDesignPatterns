//
//  Builder.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/04.
//

class BurgerBuilder {
    private var veggie = false
    private var pickles = true
    private var mayo = true
    private var ketchup = true
    private var lettuce = true
    private var cooked = Food.Cooeked.normal
    private var patties = 2
    
    func setveggie(choice: Bool) { self.veggie = choice }
    func setpickles(choice: Bool) { self.pickles = choice }
    func setmayo(choice: Bool) { self.mayo = choice }
    func setketchup(choice: Bool) { self.ketchup = choice }
    func setlettuce(choice: Bool) { self.lettuce = choice }
    func setcooked(choice: Food.Cooeked) { self.cooked = choice }
    func setpatties(choice: Bool) { self.patties = choice ? 3 : 2 }
    
    func buildObject(name: String) -> Food {
        return Food(name: name, veggie: veggie, patties: patties, pickeles: pickles, mayo: mayo, ketchup: ketchup, lettuce: lettuce, cook: cooked)
    }
}
