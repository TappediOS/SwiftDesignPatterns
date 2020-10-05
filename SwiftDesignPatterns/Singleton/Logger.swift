//
//  Logger.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/05.
//


final class Logger {
    static let shared = Logger()
    private var data:[String] = Array()
    
    private init() { }
    
    func log(msg: String) {
        self.data.append(msg)
    }
    
    func printLog() -> [String] {
        return self.data
    }
}
