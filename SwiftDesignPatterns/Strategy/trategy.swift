//
//  trategy.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/21.
//

protocol Strategy: AnyObject {
    func execute(value: [Int]) -> Int
}

class SumStrategy: Strategy {
    func execute(value: [Int]) -> Int {
        return value.reduce(0, +)
    }
}

class MultiStrategy: Strategy {
    func execute(value: [Int]) -> Int {
        return value.reduce(0, *)
    }
}

