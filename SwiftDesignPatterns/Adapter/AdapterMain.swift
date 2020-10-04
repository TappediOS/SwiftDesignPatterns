//
//  AdapterMain.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/04.
//



struct AdapterMain {
    static func main() {
        let search = SearchTool(dataSources: SalesDataSource(), DevelopmentDataSource())

        print("=== List ===")

        for e in search.employees {
            print("Name: \(e.name)")
        }

        print("=== Search ===")
        for e in search.search(text: "VP", type: .title) {
            print("Name \(e.name), Title: \(e.title)")
        }
    }
}


