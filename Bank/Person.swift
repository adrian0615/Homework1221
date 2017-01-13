//
//  Person.swift
//  Bank
//
//  Created by Adrian McDaniel on 12/20/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import Foundation





class Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
}




class Customer : Person, Equatable {
    
    public static func == (lhs: Customer, rhs: Customer) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName && lhs.email == rhs.email && lhs.accounts == rhs.accounts
    }
    var email: String
    var accounts: [BankAccount]
    
    
    
    init(firstName: String, lastName: String, email: String, accounts: [BankAccount]) {
        self.email = email
        self.accounts = accounts
        super.init(firstName: firstName, lastName: lastName)
    }
    
    func listAccounts(identify: String) -> [BankAccount]? {
        var bankAccounts:[BankAccount] = []
        
        if identify == email {
            bankAccounts = accounts
        } else {
            print("You did not enter a correct identifier")
        }
        return bankAccounts
    }
    
    func totalBalance(identify: String) -> Double? {
        var balanceList: [Double] = []
        var balance: Double? = nil
        let customer = Customer(firstName: firstName, lastName: lastName, email: email, accounts: accounts)
        
        if identify == email {
            
            for account in customer.accounts {
                balanceList.append(account.balance)
                balance = balanceList.reduce(0, +)
            }
        } else {
            print("You did not enter a correct identifier")
        }
        return balance
    }
    
}


class Employee: Person, Equatable {
    
    public static func == (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName 
    }
    
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
}
