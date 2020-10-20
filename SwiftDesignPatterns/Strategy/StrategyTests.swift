//
//  StrategyTests.swift
//  SwiftDesignPatternsTests
//
//  Created by jun on 2020/10/20.
//

import XCTest
@testable import SwiftDesignPatterns

class StrategyTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMain() {
        let exp = "40"
        XCTAssertEqual(MainStrategy.main(), exp)
    }
    

}
