//
//  TemplateMethod.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/04.
//

import Foundation


class TemplateMethodMain {
    
    static func main() -> [String] {
        var result: [String] = Array()
        let donerDB = DonorDatabase()
        
        let galeInvitations = donerDB.generate(maxNum: 2)
        
        for invite in galeInvitations {
            result.append(invite)
        }
        
        return result
    }
    
    static func TemplateMethodTestsMain() -> [String] {
        var result: [String] = Array()
        let newDoner = NewDoners()
        for invite in newDoner.generate(maxNum: Int.max) {
            result.append(invite)
        }
        
        return result
    }
}


class NewDoners: DonorDatabase {
    override func filter(donors: [Donor]) -> [Donor] {
        return donors.filter {$0.lastDonation == 0}
    }
    
    override func generate(donors: [Donor]) -> [String] {
        return donors.map({ "Hi \($0.firstName)" })
    }
    
    
}
