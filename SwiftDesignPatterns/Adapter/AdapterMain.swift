//
//  AdapterMain.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/04.
//



struct AdapterMain {
    static func main() -> [String] {
        let search = SearchTool(dataSources: SalesDataSource(), DevelopmentDataSource())
        var results: [String] = Array()
        
        print("=== List ===")

        for e in search.employees {
            results.append(e.name)
        }

        return results
    }
    
    static func adapter() -> [String] {
        let search = SearchTool(dataSources: SalesDataSource(), DevelopmentDataSource(), NewCoDirectory())
        var results: [String] = Array()
        
        print("=== List ===")

        for e in search.employees {
            results.append(e.name)
        }

        return results
    }
}


