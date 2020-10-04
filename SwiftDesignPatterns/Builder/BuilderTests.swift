//
//  BuilderTests.swift
//  SwiftDesignPatternsTests
//
//  Created by jun on 2020/10/04.
//

import XCTest
@testable import SwiftDesignPatterns

class BuilderTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMain() {
        let exp = "Joefalse2truetruetruetruenormal"
        XCTAssertEqual(MainBuilder.main(), exp)
    }
    

}

