//
//  SingletonTests.swift
//  SwiftDesignPatternsTests
//
//  Created by jun on 2020/10/05.
//

import XCTest
@testable import SwiftDesignPatterns

class SingletonTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMain() {
        let exp = ["Create name = 😎", "😎 backup item: card", "😎 backup item: Phone", "Backup 2 Item to 😎", "Create name = 🏧", "🏧 backup item: Email", "Backup 2 Item to 🏧"]
        
        XCTAssertEqual(MainSingleton.main(), exp)
    }
    

}


