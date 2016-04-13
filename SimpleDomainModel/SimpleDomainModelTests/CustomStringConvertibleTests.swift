//
//  CustomStringConvertibleTests.swift
//  SimpleDomainModel
//
//  Created by iGuest on 4/12/16.
//  Copyright © 2016 Ted Neward. All rights reserved.
//

import XCTest

class CustomStringConvertibleTests : XCTestCase {
    // test Money class
    
    func testMoneyStringDescription() {
        let tenGBP = Money(amount: 10, currency: "GBP")
        XCTAssert(tenGBP.description == "GBP10")
    }
    
    func testJobStringDescription() {
        let job = Job(title: "Guest Lecturer", type: Job.JobType.Salary(1000))
        XCTAssert(job.description == "Guest Lecturer, $1000")
    }
}
