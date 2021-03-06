//
//  BankAccountTests.swift
//  Bank
//
//  Created by Adrian McDaniel on 1/13/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import XCTest
@testable import Bank

class BankAccountTests: XCTestCase {
    
    func testDepositFunds() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 100.00, transactions: [])
        
        let test = bankAccount.depositFunds(identify: 123, deposit: 25.50)
        
        let expected: BankAccount = BankAccount(identifier: 123, balance: 125.50, transactions: [Transaction(amount: 25.50, vendorName: "self")])
        
        XCTAssertEqual(test?.balance, expected.balance)

    }
    
    
    func testDepositFunds2() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 150.00, transactions: [])
        
        let test = bankAccount.depositFunds(identify: 123, deposit: 500.00)
        
        let expected: BankAccount = BankAccount(identifier: 123, balance: 650.00, transactions: [Transaction(amount: 500.00, vendorName: "self")])
        
        XCTAssertEqual(test?.balance, expected.balance)
        
    }
    
    func testDepositFundsRightID() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 150.00, transactions: [])
        
        let test = bankAccount.depositFunds(identify: 123, deposit: 500.00)
        
        let expected: BankAccount = BankAccount(identifier: 123, balance: 650.00, transactions: [Transaction(amount: 500.00, vendorName: "self")])
        
        XCTAssertEqual(test?.identifier, expected.identifier)
        
    }
    
    func testNotDepositFundsWrongBalance1() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 150.00, transactions: [])
        
        let test = bankAccount.depositFunds(identify: 123, deposit: 500.00)
        
        let expected: BankAccount = BankAccount(identifier: 123, balance: 550.20, transactions: [Transaction(amount: 500.00, vendorName: "self")])
        
        XCTAssertNotEqual(test?.balance, expected.balance)
        
    }
    
    func testNotDepositFundsWrongBalance() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 150.00, transactions: [])
        
        let test = bankAccount.depositFunds(identify: 123, deposit: 500.00)
        
        let expected: BankAccount = BankAccount(identifier: 123, balance: 200.00, transactions: [Transaction(amount: 500.00, vendorName: "self")])
        
        XCTAssertNotEqual(test?.balance, expected.balance)
        
    }
    
    func testNotDepositFundsWrongID() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 150.00, transactions: [])
        
        let test = bankAccount.depositFunds(identify: 123, deposit: 500.00)
        
        let expected: BankAccount = BankAccount(identifier: 324, balance: 650.00, transactions: [Transaction(amount: 500.00, vendorName: "self")])
        
        XCTAssertNotEqual(test?.identifier, expected.identifier)
        
    }
    
    func testNotDepositFundsWrongTransactionAmount() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 150.00, transactions: [])
        
        let test = bankAccount.depositFunds(identify: 123, deposit: 500.00)
        
        let expected: BankAccount = BankAccount(identifier: 123, balance: 650.00, transactions: [Transaction(amount: 400.00, vendorName: "self")])
        
        XCTAssertNotEqual(test, expected)
        
    }
    
    
    func testWithdrawFundsBalance() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 150.00, transactions: [])
        
        let test = bankAccount.withdrawFunds(identify: 123, withdrawal: 50.00)
        
        let expected: BankAccount = BankAccount(identifier: 123, balance: 100.00, transactions: [Transaction(amount: -50.00, vendorName: "self")])
        
        XCTAssertEqual(test?.balance, expected.balance)
        
    }
    
    
    func testWithdrawFundsBalance2() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 2000.50, transactions: [])
        
        let test = bankAccount.withdrawFunds(identify: 123, withdrawal: 100.00)
        
        let expected: BankAccount = BankAccount(identifier: 123, balance: 1900.50, transactions: [Transaction(amount: -100.00, vendorName: "self")])
        
        XCTAssertEqual(test?.balance, expected.balance)
        
    }
    
    func testNotWithdrawFundsWrongBalance() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 2000.00, transactions: [])
        
        let test = bankAccount.withdrawFunds(identify: 123, withdrawal: 1999.98)
        
        let expected: BankAccount = BankAccount(identifier: 123, balance: 500.00, transactions: [Transaction(amount: -1999.98, vendorName: "self")])
        
        XCTAssertNotEqual(test?.balance, expected.balance)
        
    }
    
    func testNotWithdrawFundsWrongID() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 150.00, transactions: [])
        
        let test = bankAccount.withdrawFunds(identify: 123, withdrawal: 50.00)
        
        let expected: BankAccount = BankAccount(identifier: 563, balance: 100.00, transactions: [Transaction(amount: -50.00, vendorName: "self")])
        
        XCTAssertNotEqual(test?.identifier, expected.identifier)
        
    }
    
    
    func testRequestBalance() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 2000.50, transactions: [])
        
        let test = bankAccount.requestBalance(identify: 123)
        
        let expected: Double = 2000.50
        
        XCTAssertEqual(test, expected)
        
    }
    
    func testRequestBalance2() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 1230.50, transactions: [])
        
        let test = bankAccount.requestBalance(identify: 123)
        
        let expected: Double = 1230.50
        
        XCTAssertEqual(test, expected)
        
    }
    
    func testNotRequestBalance() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 1230.50, transactions: [])
        
        let test = bankAccount.requestBalance(identify: 123)
        
        let expected: Double = 1230.00
        
        XCTAssertNotEqual(test, expected)
        
    }
    
    func testNotRequestBalanceWrongID() {
        let bankAccount: BankAccount = BankAccount(identifier: 123, balance: 1230.50, transactions: [])
        
        let test = bankAccount.requestBalance(identify: 789)
        
        let expected: Double = 1230.50
        
        XCTAssertNotEqual(test, expected)
        
    }
}


