//
//  EmployeeSearch.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/04.
//

class SearchTool {
    
    enum SearchType {
        case name
        case title
    }
    
    private let sources: [EmployeeDataSource]
    
    init(dataSources: EmployeeDataSource...) {
        self.sources = dataSources
    }
    
    var employees: [Employees] {
        var result: [Employees] = Array()
        for sourse in self.sources {
            result += sourse.employees
        }
        
        return result
    }
    
    func search(text: String, type: SearchType) -> [Employees] {
        var resutls: [Employees] = Array()
        
        for source in self.sources {
            resutls += type == SearchType.name ? source.searchByName(name: text) : source.searchByTitle(title: text)
        }
        
        return resutls
    }
    
}
