//
//  Doners.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/04.
//

struct Donor {
    let title: String
    let firstName: String
    let familyName: String
    let lastDonation: Float
    
    init(_ title: String, _ first: String, _ family: String, _ last: Float) {
        self.title = title
        self.firstName = first
        self.familyName = family
        self.lastDonation = last
    }
}

class DonorDatabase {
    private var doners: [Donor]
    
    init() {
        doners = [
            Donor("Ms", "Anne", "Jones", 0),
            Donor("Mr", "Bob", "Smith", 100),
            Donor("Dr", "Alice", "Doe", 200),
            Donor("Prof", "joe", "Davis", 320)
        ]
    }
    
    func filter(donors: [Donor]) -> [Donor] {
        return donors.filter { $0.lastDonation > 0 }
    }
    
    func generate(donors: [Donor]) -> [String] {
        return donors.map { (donor: Donor) -> String in
            return "Dear \(donor.title). \(donor.familyName)"
        }
    }
    
    func generate(maxNum: Int) -> [String] {
        
        var targetDoners = filter(donors: self.doners)
        
        targetDoners.sort(by: {$0.lastDonation > $1.lastDonation})
        
        if targetDoners.count > maxNum {
            targetDoners = Array(targetDoners[0..<maxNum])
        }
        
        return generate(donors: targetDoners)
    }
}
