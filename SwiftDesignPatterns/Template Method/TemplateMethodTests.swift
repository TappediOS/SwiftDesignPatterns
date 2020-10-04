//
//  TemplateMethodTests.swift
//  SwiftDesignPatternsTests
//
//  Created by jun on 2020/10/04.
//

import XCTest
@testable import SwiftDesignPatterns

class TemplateMethodTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMain() {
        let exp = ["Dear Prof. Davis", "Dear Dr. Doe"]
        XCTAssertEqual(TemplateMethodMain.main(), exp)
    }
    
    func testTemplateMethodMain() {
        let exp = ["Hi Anne"]
        XCTAssertEqual(TemplateMethodMain.TemplateMethodTestsMain(), exp)
    }


}
