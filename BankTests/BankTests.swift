//
//  BankTests.swift
//  BankTests
//
//  Created by Adrian McDaniel on 12/20/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import XCTest
@testable import Bank

class BankTests: XCTestCase {
    
    
    func testCustomerAdd1() {
        
        let aBank: Bank = Bank(address: "123", employees: [Employee(firstName: "John", lastName: "Johnson"), Employee(firstName: "James", lastName: "Jameson")], customers: [Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24)]), Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00)])], bankAccounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24), Checking(identifier: 456, balance: 500.00)])
        
        let test = aBank.addCustomer(firstName: "Anders", lastName: "Anderson", email: "a@a.com", bankAccount: Checking(identifier: 789, balance: 100.00))
        
        let expected = Bank(address: "123", employees: [Employee(firstName: "John", lastName: "Johnson"), Employee(firstName: "James", lastName: "Jameson")], customers: [Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24)]), Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00)]), Customer(firstName: "Anders", lastName: "Anderson", email: "a@a.com", accounts: [Checking(identifier: 789, balance: 100.00)])], bankAccounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24), Checking(identifier: 456, balance: 500.00), Checking(identifier: 789, balance: 100.00)])
        
        XCTAssertEqual(test, expected)
    }
    
    
    func testCustomerAdd2() {
        
        let aBank: Bank = Bank(address: "123", employees: [Employee(firstName: "John", lastName: "Johnson"), Employee(firstName: "James", lastName: "Jameson")], customers: [Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24)]), Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00)])], bankAccounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24), Checking(identifier: 456, balance: 500.00)])
        
        let test = aBank.addCustomer(firstName: "Penny", lastName: "Penderson", email: "p@p.com", bankAccount: Checking(identifier: 789, balance: 20.00))
        
        let expected = Bank(address: "123", employees: [Employee(firstName: "John", lastName: "Johnson"), Employee(firstName: "James", lastName: "Jameson")], customers: [Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24)]), Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00)]), Customer(firstName: "Penny", lastName: "Penderson", email: "p@p.com", accounts: [Checking(identifier: 789, balance: 20.00)])], bankAccounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24), Checking(identifier: 456, balance: 500.00), Checking(identifier: 789, balance: 20.00)])
        
        XCTAssertEqual(test, expected)
    }
    
    func testNotCustomerAdd() {
        
        let aBank: Bank = Bank(address: "123", employees: [Employee(firstName: "John", lastName: "Johnson"), Employee(firstName: "James", lastName: "Jameson")], customers: [Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24)]), Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00)])], bankAccounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24), Checking(identifier: 456, balance: 500.00)])
        
        let test = aBank.addCustomer(firstName: "Anders", lastName: "Anderson", email: "a@a.com", bankAccount: Checking(identifier: 789, balance: 100.00))
        
        let expected = Bank(address: "123", employees: [Employee(firstName: "John", lastName: "Johnson"), Employee(firstName: "James", lastName: "Jameson")], customers: [Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24)]), Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00)]), Customer(firstName: "Penny", lastName: "Penderson", email: "p@p.com", accounts: [Checking(identifier: 789, balance: 20.00)])], bankAccounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24), Checking(identifier: 456, balance: 500.00), Checking(identifier: 789, balance: 20.00)])
        
        XCTAssertNotEqual(test, expected)
    }
    
    func testNotCustomerAdd2() {
        
        let aBank: Bank = Bank(address: "123", employees: [Employee(firstName: "John", lastName: "Johnson"), Employee(firstName: "James", lastName: "Jameson")], customers: [Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24)]), Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00)])], bankAccounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24), Checking(identifier: 456, balance: 500.00)])
        
        let test = aBank.addCustomer(firstName: "Penny", lastName: "Penderson", email: "p@p.com", bankAccount: Checking(identifier: 780, balance: 20.00))
        
        let expected = Bank(address: "123", employees: [Employee(firstName: "John", lastName: "Johnson"), Employee(firstName: "James", lastName: "Jameson")], customers: [Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24)]), Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00)]), Customer(firstName: "Penny", lastName: "Penderson", email: "p@p.com", accounts: [Checking(identifier: 789, balance: 20.00)])], bankAccounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24), Checking(identifier: 456, balance: 500.00), Checking(identifier: 789, balance: 20.00)])
        
        XCTAssertNotEqual(test, expected)
    }
    
    func testTotalDeposit() {
        
        let aBank: Bank = Bank(address: "123", employees: [Employee(firstName: "John", lastName: "Johnson"), Employee(firstName: "James", lastName: "Jameson")], customers: [Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24)]), Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00)])], bankAccounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24), Checking(identifier: 456, balance: 500.00)])
        
        let test = aBank.totalDeposit(accounts: aBank.bankAccounts)
        
        let expected: Double = 1150.24
        
        XCTAssertEqual(test, expected)
        
    }
    
    
    func testTotalDeposit2() {
        
        let aBank: Bank = Bank(address: "123", employees: [Employee(firstName: "John", lastName: "Johnson"), Employee(firstName: "James", lastName: "Jameson")], customers: [Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24)]), Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00)])], bankAccounts: [Savings(identifier: 123, balance: 250.00),Checking(identifier: 321, balance: 250.00), Checking(identifier: 456, balance: 500.00)])
        
        let test = aBank.totalDeposit(accounts: aBank.bankAccounts)
        
        let expected: Double = 1000.00
        
        XCTAssertEqual(test, expected)
        
    }
    
    func testNotTotalDeposit() {
        
        let aBank: Bank = Bank(address: "123", employees: [Employee(firstName: "John", lastName: "Johnson"), Employee(firstName: "James", lastName: "Jameson")], customers: [Customer(firstName: "Richard", lastName: "Richardson", email: "r@r.com", accounts: [Savings(identifier: 123, balance: 425.00),Checking(identifier: 321, balance: 225.24)]), Customer(firstName: "Tom", lastName: "Thompson", email: "t@t.com", accounts: [Checking(identifier: 456, balance: 500.00)])], bankAccounts: [Savings(identifier: 123, balance: 250.00),Checking(identifier: 321, balance: 250.00), Checking(identifier: 456, balance: 500.00)])
        
        let test = aBank.totalDeposit(accounts: aBank.bankAccounts)
        
        let expected: Double = 1000.01
        
        XCTAssertNotEqual(test, expected)
        
    }
}





