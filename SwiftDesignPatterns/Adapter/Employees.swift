//
//  Employees.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/04.
//

struct Employees {
    var name: String
    var title: String
}

protocol EmployeeDataSource {
    var employees: [Employees] { get }
    
    func searchByName(name: String) -> [Employees]
    func searchByTitle(title: String) -> [Employees]
}
