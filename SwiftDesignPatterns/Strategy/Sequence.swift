//
//  Sequence.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/20.
//

class Sequence {
    private var nums: [Int]
    
    init(nums: [Int]) {
        self.nums = nums
    }
    
    func addNum(value: Int) {
        self.nums.append(value)
    }
    
    func compute(strategy: Strategy) -> Int {
        return strategy.execute(value: self.nums)
    }
}
