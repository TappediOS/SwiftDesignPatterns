//
//  CompositeTests.swift
//  SwiftDesignPatternsTests
//
//  Created by jun on 2020/10/19.
//

import XCTest
@testable import SwiftDesignPatterns

class CompositeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMain() {
        let exp = "Order for bob: Cost: 10066.0"
        
        XCTAssertEqual(CompositeMain.main(), exp)
    }
    

}



