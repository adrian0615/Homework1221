//
//  CustomerTests.swift
//  Bank
//
//  Created by Adrian McDaniel on 1/13/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import XCTest
@testable import Bank

class CustomerTests: XCTestCase {

    func testListAccounts() {
        let customer: Customer = Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00, transactions: []),Checking(identifier: 321, balance: 225.24, transactions: [])])
        
        let test = customer.listAccounts(identify: "r@r.com")
        let expected = [Savings(identifier: 123, balance: 425.00, transactions: []),Checking(identifier: 321, balance: 225.24, transactions: [])]
        
        XCTAssertEqual(test!, expected)
    }
    
    func testListAccounts2() {
        let customer: Customer = Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00, transactions: [])])
        
        let test = customer.listAccounts(identify: "t@t.com")
        let expected = [Checking(identifier: 456, balance: 500.00, transactions: [])]
        
        XCTAssertEqual(test!, expected)
    }
    
    func testNotListAccountsWrongIdentifier() {
        let customer: Customer = Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00, transactions: [])])
        
        let test = customer.listAccounts(identify: "b@b.com")
        let expected = [Checking(identifier: 456, balance: 500.00, transactions: [])]
        
        XCTAssertNotEqual(test!, expected)
    }
    
    func testTotalBalance() {
        let customer: Customer = Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00, transactions: [])])
        
        let test = customer.totalBalance(identify: "t@t.com")
        let expected: Double = 500.00
        
        XCTAssertEqual(test!, expected)
    }
    
    func testTotalBalance2() {
        let customer: Customer = Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00, transactions: []),Checking(identifier: 321, balance: 225.24, transactions: [])])
        
        let test = customer.totalBalance(identify: "r@r.com")
        let expected: Double = 650.24
        
        XCTAssertEqual(test!, expected)
    }
    
    func testNotTotalBalance() {
        let customer: Customer = Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00, transactions: []),Checking(identifier: 321, balance: 225.24, transactions: [])])
        
        let test = customer.totalBalance(identify: "r@r.com")
        let expected: Double = 200.00
        
        XCTAssertNotEqual(test!, expected)
    }
    
    
}
