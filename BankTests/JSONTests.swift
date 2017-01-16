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

    func testJSON() {
        
    let aBank: Bank = Bank(address: "123", employees: [Employee(firstName: "John", lastName: "Johnson"), Employee(firstName: "James", lastName: "Jameson")], customers: [Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00, transactions: []),Checking(identifier: 321, balance: 225.24, transactions: [])]), Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00, transactions: [])])], bankAccounts: [Savings(identifier: 123, balance: 425.00, transactions: []),Checking(identifier: 321, balance: 225.24, transactions: []), Checking(identifier: 456, balance: 500.00, transactions: [])])
        
        let json = Json()
        
        let dictTest = json.makeJSONAble(bank: aBank, bankAccounts: aBank.bankAccounts)
        print("--------------------------")
        
        json.jsonTransfer(jsonDict: dictTest)
        
    }
}
