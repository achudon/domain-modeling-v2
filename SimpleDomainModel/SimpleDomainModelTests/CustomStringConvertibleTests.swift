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
    
    func testJobStringDescriptionSalary() {
        let job = Job(title: "Guest Lecturer", type: Job.JobType.Salary(1000))
        XCTAssert(job.description == "Guest Lecturer, $1000 per year")
    }
    
    func testJobStringDescriptionHourly() {
        let job = Job(title: "Guest Lecturer", type: Job.JobType.Hourly(10))
        XCTAssert(job.description == "Guest Lecturer, $10.0 per hour")
    }
    
    func testPersonStringDescription() {
        let ted = Person(firstName: "Ted", lastName: "Neward", age: 45)
        XCTAssert(ted.description == "[Person: firstName:Ted lastName:Neward age:45 job:no job spouse:no spouse]")
    }
    
    func testFamilyStringDescription() {
        let ted = Person(firstName: "Ted", lastName: "Neward", age: 45)
        ted.job = Job(title: "Guest Lecturer", type: Job.JobType.Salary(1000))
        
        let charlotte = Person(firstName: "Charlotte", lastName: "Neward", age: 45)
        
        let family = Family(spouse1: ted, spouse2: charlotte)
        
        XCTAssert(family.description == "Family members: [Person: firstName:Ted lastName:Neward age:45 job:Guest Lecturer spouse:Charlotte Neward] [Person: firstName:Charlotte lastName:Neward age:45 job:no job spouse:Ted Neward] Family income: 1000")
    }
}
