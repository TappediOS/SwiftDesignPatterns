//
//  Adapter.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/04.
//

import Foundation


extension NewCoDirectory: EmployeeDataSource {
    var employees: [Employees] {
        return getStaff().values.map { sv -> Employees in
            return Employees(name: sv.getName(), title: sv.getJob())
        }
    }
    
    func searchByName(name: String) -> [Employees] {
        return createEmployees(filter: { (sv: NewCoStaffMember) -> Bool in
            return sv.getName().range(of: name) != nil
        })
    }
    
    func searchByTitle(title: String) -> [Employees] {
        return createEmployees(filter: { (sv: NewCoStaffMember) -> Bool in
            return sv.getName().range(of: title) != nil
        })
    }
    
    private func createEmployees(filter filterClosure: ((NewCoStaffMember) -> Bool)) -> [Employees] {
        return getStaff().values.filter(filterClosure).map { entry -> Employees in
            return Employees(name: entry.getName(), title: entry.getJob())
        }
    }
}
