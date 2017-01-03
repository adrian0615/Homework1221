//
//  AccountType.swift
//  Bank
//
//  Created by Adrian McDaniel on 12/20/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import Foundation


enum AccountType {
    case checking
    case savings
    
}
    



class BankAccount {
 ////Savings and Checking will be a subclass of BankAccount and not an enum  // Nothing has to be different
    
    
    var identifier: String
    let accountType: AccountType
    var balance: Double
    
    
    init(identifier: String, accountType: AccountType, balance: Double) {
        self.identifier = identifier
        self.accountType = accountType
        self.balance = balance
        
        
        
        func depositFunds(identifier: String, accountType: AccountType, deposit: Double) -> BankAccount {
            let existingBalance = balance
            let newBalance = existingBalance + deposit
            return BankAccount(identifier: identifier, accountType: accountType, balance: newBalance)
        }
        
        func withdrawFunds(identifier: String, accountType: AccountType, withdrawal: Double) -> BankAccount {
            let existingBalance = balance
            let newBalance = existingBalance - withdrawal
            return BankAccount(identifier: identifier, accountType: accountType, balance: newBalance)
        }
        
        func requestBalance(identifer: String, accountType: AccountType) -> BankAccount {
            return BankAccount(identifier: identifier, accountType: accountType, balance: balance)
        }
    }
}


