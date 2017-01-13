//
//  Bank.swift
//  Bank
//
//  Created by Adrian McDaniel on 12/20/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import Foundation


class Bank : Equatable {
    
    public static func == (lhs: Bank, rhs: Bank) -> Bool {
        return lhs.address == rhs.address && lhs.employees == rhs.employees && lhs.customers == rhs.customers && lhs.bankAccounts == rhs.bankAccounts
    }
    
    var address: String
    var employees: [Employee]
    var customers: [Customer]
    var bankAccounts: [BankAccount]
    
    init(address: String, employees: [Employee], customers: [Customer], bankAccounts: [BankAccount]) {
        self.address = address
        self.customers = customers
        self.employees = employees
        self.bankAccounts = bankAccounts
    }
    
    
    func addCustomer(firstName: String, lastName: String, email: String, bankAccount: BankAccount) -> Bank {
        let bank = Bank(address: address, employees: employees, customers: customers, bankAccounts: bankAccounts)
        
        let newCustomer = Customer(firstName: firstName, lastName: lastName, email: email, accounts: [])
        newCustomer.accounts.append(bankAccount)
        bank.customers.append(newCustomer)
        bank.bankAccounts.append(bankAccount)
        
        return bank
    }
    
    func totalDeposit(accounts: [BankAccount]) -> Double? {
        var balanceList: [Double] = []
        var balance: Double? = nil
        
        for account in accounts {
            balanceList.append(account.balance)
            balance = balanceList.reduce(0, +)
        }
        return balance
    }
    
    
}










