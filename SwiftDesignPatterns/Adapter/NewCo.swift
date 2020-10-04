//
//  NewCo.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/04.
//


class NewCoStaffMember {
    private var name: String
    private var role: String
    
    init(name: String, role: String) {
        self.name = name
        self.role = role
    }
    
    func getName() -> String { return self.name}
    func getJob() -> String { return self.role }
}

class NewCoDirectory {
    private var staff: [String: NewCoStaffMember]
    
    init() {
        staff = [
            "Hana": NewCoStaffMember(name: "Hana", role: "Corp Counsel"),
            "Grata": NewCoStaffMember(name: "Grate", role: "VC, Legal")
        ]
    }
    
    func getStaff() -> [String: NewCoStaffMember] {
        return self.staff
    }
}
