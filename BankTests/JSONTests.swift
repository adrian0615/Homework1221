//
//  JSONTests.swift
//  Bank
//
//  Created by Adrian McDaniel on 1/13/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import XCTest
@testable import Bank

class JSONTests: XCTestCase {

    func testMakeDictionary() {
        
    let aBank: Bank = Bank(address: "123", employees: [Employee(firstName: "John", lastName: "Johnson"), Employee(firstName: "James", lastName: "Jameson")], customers: [Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Checking(identifier: 321, balance: 225.24)])], bankAccounts: [Checking(identifier: 321, balance: 225.24)])
        
        let json = Json()
        
        let test = json.makeDictionary(bank: aBank)
        
        print(test)
        
    }
}
