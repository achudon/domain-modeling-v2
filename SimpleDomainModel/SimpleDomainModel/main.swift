//
//  main.swift
//  SimpleDomainModel
//
//  Created by Ted Neward on 4/6/16.
//  Copyright © 2016 Ted Neward. All rights reserved.
//

import Foundation

print("Hello, World!")

public func testMe() -> String {
    return "I have been tested"
}

public class TestMe {
    public func Please() -> String {
        return "I have been tested"
    }
}

////////////////////////////////////
// Money
//
public struct Money {
    public var amount : Int
    public var currency : String
  
    public func convert(to: String) -> Money {
        var newValue = self.amount
        
    
        if (self.currency == "USD" && to == "GBP") {
            newValue = self.amount / 2
        } else if (self.currency == "GBP" && to == "USD") {
            newValue = self.amount * 2
        } else if (self.currency == "USD" && to == "EUR") {
            newValue = (self.amount * 3) / 2
        } else if (self.currency == "EUR" && to == "USD") {
            newValue = (self.amount * 2) / 3
        } else if (self.currency == "USD" && to == "CAN") {
            newValue = (self.amount * 5) / 4
        } else if (self.currency == "CAN" && to == "USD") {
            newValue = (self.amount * 4) / 5
        } else if (self.currency == "GBP" && to == "EUR") {
            newValue = self.amount * 3
        } else if (self.currency == "EUR" && to == "GBP") {
            newValue = self.amount / 3
        } else if (self.currency == "GBP" && to == "CAN") {
            newValue = self.amount * 5
        } else if (self.currency == "CAN" && to == "GBP") {
            newValue = self.amount / 5
        } else if (self.currency == "EUR" && to == "CAN") {
            newValue = (self.amount * 5) / 3
        } else if (self.currency == "CAN" && to == "EUR") {
            newValue = (self.amount * 3) / 5
        }
        
        return Money(amount: newValue, currency: to)
    }
  
    public func add(to: Money) -> Money {
        var convertedAmount = to.amount
        
        if (self.currency != to.currency) {
            convertedAmount = self.convert(to.currency).amount
        }
        
        let newAmount = to.amount + convertedAmount
        
        return Money(amount: newAmount, currency: to.currency)
    }
    
    public func subtract(from: Money) -> Money {
        var convertedAmount = from.amount
        
        if (self.currency != from.currency) {
            convertedAmount = self.convert(from.currency).amount
        }
        
        let newAmount = from.amount - convertedAmount
        
        return Money(amount: newAmount, currency: from.currency)
    }
}

////////////////////////////////////
// Job
//
public class Job {
    public enum JobType {
        case Hourly(Double)
        case Salary(Int)
    }
    
    public var title : String
    
    public var salary : JobType
  
    public init(title : String, type : JobType) {
        self.title = title
        self.salary = type
    }
  
    public func calculateIncome(hours: Int) -> Int {
        switch self.salary {
            case .Hourly(let val) :
                return Int(val) * hours
    
            case .Salary(let val) :
                return Int(val)
        }
    }
  
    public func raise(amt : Double) {
        switch self.salary {
        case .Hourly(let val) :
            self.salary = JobType.Hourly(val + amt)
        case .Salary(let val) :
            self.salary = JobType.Salary(val + Int(amt))
        }
    }
}

////////////////////////////////////
// Person
//
public class Person {
  public var firstName : String = ""
  public var lastName : String = ""
  public var age : Int = 0

  public var job : Job? {
    get {
        return self.job
    }
    set(value) {
        if value != nil {
            self.job = value
        }
    }
  }

  public var spouse : Person? {
    get {
        return self.spouse
    }
    set(value) {
        if value != nil {
            self.spouse = value
        }
    }
  }
  
  public init(firstName : String, lastName: String, age : Int) {
    self.firstName = firstName
    self.lastName = lastName
    self.age = age
  }
  
  public func toString() -> String {
    return "hello"
  }
}


//////////////////////////////////////
//// Family
////
//public class Family {
//  private var members : [Person] = []
//  
//  public init(spouse1: Person, spouse2: Person) {
//  }
//  
//  public func haveChild(child: Person) -> Bool {
//  }
//  
//  public func householdIncome() -> Int {
//  }
//}





