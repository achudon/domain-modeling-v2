//
//  DoubleExtensionTests.swift
//  SimpleDomainModel
//
//  Created by iGuest on 4/18/16.
//  Copyright © 2016 Ted Neward. All rights reserved.
//

import XCTest

class DoubleExtensionTests : XCTestCase {
    func testUSD() {
        let myUsd = 10.0.USD
        XCTAssert(myUsd.description == "USD10")
    }
    
    func testEUR() {
        let myEur = 5.0.EUR
        XCTAssert(myEur.description == "EUR5")
    }
    
    func testGBP() {
        let myGbp = 5.2.GBP
        XCTAssert(myGbp.description == "GBP5")
    }
    
    func testYEN() {
        let myYen = 3.7.YEN
        XCTAssert(myYen.description == "YEN3")
    }
    
}
