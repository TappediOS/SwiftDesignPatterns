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
        
        let cstrategy = ClosureStrategy(closure: { (values: [Int]) -> Int in
            values.map { $0 * 2 }.reduce(0, +)
        })
        
        print(seq.compute(strategy: cstrategy))
        
        return String(seq.compute(strategy: sumStra))
    }
}
