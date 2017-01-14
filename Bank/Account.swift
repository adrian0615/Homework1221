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
        return lhs.identifier == rhs.identifier && lhs.balance == rhs.balance && lhs.transactions == rhs.transactions
    }
    
    var identifier: Int
    var balance: Double
    var transactions: [Transaction]
    
    
    init(identifier: Int, balance: Double, transactions: [Transaction]) {
        self.identifier = identifier
        self.balance = balance
        self.transactions = transactions
    }
    
        
        func depositFunds(identify: Int, deposit: Double) -> BankAccount? {
            var bankAccount: BankAccount? = nil
            let transaction = Transaction(amount: deposit, vendorName: "self")
            var currentTransactions = transactions
            currentTransactions.append(transaction)
            if identify == identifier {
            let existingBalance = balance
            let newBalance = existingBalance + deposit
                bankAccount = BankAccount(identifier: identifier, balance: newBalance, transactions: currentTransactions)
                
            } else {
                print("You did not enter a correct identifier.  Try again.")
            }
            print(transaction)
            return bankAccount
        }
        
        func withdrawFunds(identify: Int, withdrawal: Double) -> BankAccount? {
            var bankAccount: BankAccount? = nil
            let transaction = Transaction(amount: withdrawal.negated(), vendorName: "self")
            var currentTransactions = transactions
            currentTransactions.append(transaction)
            if identify == identifier {
                let existingBalance = balance
                let newBalance = existingBalance - withdrawal
                bankAccount = BankAccount(identifier: identifier, balance: newBalance, transactions: currentTransactions)
            } else {
                print("You did not enter a correct identifier.  Try again.")
            }
            return bankAccount
        }
        
        func requestBalance(identify: Int) -> Double? {
            var accountBalance: Double? = nil
            var bankAccount: BankAccount
            
            if identify == identifier {
                bankAccount = BankAccount(identifier: identifier, balance: balance, transactions: transactions)
            accountBalance = bankAccount.balance
            } else {
                print("You did not enter a correct identifier.  Try again.")
            }
            return accountBalance
    }
}

class Savings: BankAccount {
    
    override init(identifier: Int, balance: Double, transactions: [Transaction]) {
        super.init(identifier: identifier, balance: balance, transactions: transactions)
    }
}

class Checking: BankAccount {
    
    override init(identifier: Int, balance: Double, transactions: [Transaction]) {
        super.init(identifier: identifier, balance: balance, transactions: transactions)
    }
}


