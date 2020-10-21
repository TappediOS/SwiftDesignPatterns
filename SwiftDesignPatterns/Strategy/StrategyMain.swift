//
//  StrategyMain.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/20.
//

class MainStrategy {
    static func main() -> String {
        let seq = Sequence(nums: [1, 2, 3, 4])
        seq.addNum(value: 10)
        seq.addNum(value: 20)
        
        let sumStra = SumStrategy()
        _ = MultiStrategy()
        
        return String(seq.compute(strategy: sumStra))
    }
}
