//
//  DataSources.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/04.
//

import Foundation

class DataSourceBase: EmployeeDataSource {
    var employees: [Employees] = Array()
    
    func searchByName(name: String) -> [Employees] {
        return self.search(selector: { e -> Bool in
            return e.name.range(of: name) != nil
        })
    }
    
    func searchByTitle(title: String) -> [Employees] {
        return self.search(selector: { e -> Bool in
            return e.title.range(of: title) != nil
        })
    }
    
    private func search(selector: ((Employees) -> Bool)) -> [Employees] {
        var result: [Employees] = Array()
        for e in self.employees {
            if (selector(e)) {
                result.append(e)
            }
        }
        return result
    }
}

class SalesDataSource: DataSourceBase {
    override init() {
        super.init()
        employees.append(Employees(name: "Alice", title: "VP of Sales"))
        employees.append(Employees(name: "Bob", title: "Account Exec"))
    }
}

class DevelopmentDataSource: DataSourceBase {
    override init() {
        super.init()
        employees.append(Employees(name: "Joe", title: "VP of Development"))
        employees.append(Employees(name: "Pepe", title: "Developer"))
    }
}
