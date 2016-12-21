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
    var customers = [String]
    var employees: [String]
    var totalDeposit: Double
    var bankAccounts: [String]
    
    init(address: String, customers: [String], employees: [String], totalDeposit: Double, bankAccounts: [String]) {
        self.address = address
        self.customers = customers
        self.employees = employees
        self.totalDeposit = totalDeposit
        self.bankAccounts = bankAccounts
    }
    
    func addACustomer(customer: String) -> Bank {
        var customerList = customers
        customerList.append("CustomerOne")
        return Bank(address: address, customers: customerList, employees: employees, totalDeposit: totalDeposit, bankAccounts: bankAccounts)
    }
    
    
}








