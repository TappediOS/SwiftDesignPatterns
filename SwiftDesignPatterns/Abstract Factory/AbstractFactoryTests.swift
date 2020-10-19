//
//  AbstractFactoryTests.swift
//  SwiftDesignPatternsTests
//
//  Created by jun on 2020/10/17.
//

import XCTest
@testable import SwiftDesignPatterns

class AbstractFactoryTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMain() {
        let exp = ["model s", "2", "sport", "rear"]
        
        XCTAssertEqual(AbstractFactory.main(), exp)
    }
    

}


