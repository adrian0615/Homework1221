//
//  AccountType.swift
//  Bank
//
//  Created by Adrian McDaniel on 12/20/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import Foundation



    



class BankAccount: Equatable {
    
    public static func == (lhs: BankAccount, rhs: BankAccount) -> Bool {
        return lhs.identifier == rhs.identifier && lhs.balance == rhs.balance
    }
    
    var identifier: Int
    var balance: Double
    
    
    init(identifier: Int, balance: Double) {
        self.identifier = identifier
        self.balance = balance
    }
    
        
        func depositFunds(identify: Int, deposit: Double) -> BankAccount? {
            var bankAccount: BankAccount? = nil
            
            if identify == identifier {
            let existingBalance = balance
            let newBalance = existingBalance + deposit
                bankAccount = BankAccount(identifier: identifier, balance: newBalance)
            } else {
                print("You did not enter a correct identifier.  Try again.")
            }
            return bankAccount
        }
        
        func withdrawFunds(identify: Int, withdrawal: Double) -> BankAccount? {
            var bankAccount: BankAccount? = nil
            
            if identify == identifier {
                let existingBalance = balance
                let newBalance = existingBalance - withdrawal
                bankAccount = BankAccount(identifier: identifier, balance: newBalance)
            } else {
                print("You did not enter a correct identifier.  Try again.")
            }
            return bankAccount
        }
        
        func requestBalance(identify: Int) -> Double? {
            var accountBalance: Double? = nil
            var bankAccount: BankAccount
            
            if identify == identifier {
            bankAccount = BankAccount(identifier: identifier, balance: balance)
            accountBalance = bankAccount.balance
            } else {
                print("You did not enter a correct identifier.  Try again.")
            }
            return accountBalance
    }
}

class Savings: BankAccount {
    
    override init(identifier: Int, balance: Double) {
        super.init(identifier: identifier, balance: balance)
    }
}

class Checking: BankAccount {
    
    override init(identifier: Int, balance: Double) {
        super.init(identifier: identifier, balance: balance)
    }
}


