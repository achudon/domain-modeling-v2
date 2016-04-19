//
//  MathematicsTests.swift
//  SimpleDomainModel
//
//  Created by iGuest on 4/18/16.
//  Copyright © 2016 Ted Neward. All rights reserved.
//

import XCTest

class MathematicsTests : XCTestCase {
    let tenUSD = Money(amount: 10, currency: "USD")
    
    func testAddMoney() {
        let total = tenUSD + tenUSD
        XCTAssert(total.amount == 20)
        XCTAssert(total.currency == "USD")
    }
    
    func testSubtractMoney() {
        let total = tenUSD - tenUSD
        XCTAssert(total.amount == 0)
        XCTAssert(total.currency == "USD")
    }

}
