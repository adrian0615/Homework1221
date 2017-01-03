//
//  Bank.swift
//  Bank
//
//  Created by Adrian McDaniel on 12/20/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import Foundation


class Bank {
    
    var address: String
    var employees: [Person]
    var totalDeposit: Double
    var bankAccounts: [Customer: BankAccount]
    
    init(address: String, employees: [Person], totalDeposit: Double, bankAccounts: [Customer: BankAccount]) {
        self.address = address
        self.customers = customers
        self.employees = employees
        self.totalDeposit = totalDeposit
        self.bankAccounts = bankAccounts
    }
    
    func addACustomer(firstName: String, lastName: String, email: String) -> [Customer] {
        var newAccount
}








