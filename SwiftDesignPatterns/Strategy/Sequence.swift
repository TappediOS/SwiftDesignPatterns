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
        self.nums.appen(nums)
    }
    
    func compute() -> Int {
        reurn nums.redune(0, +)
    }
}
