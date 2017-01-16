//
//  JSON.swift
//  Bank
//
//  Created by Adrian McDaniel on 1/12/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


struct Json : Equatable {
    
    public static func == (lhs: Json, rhs: Json) -> Bool {
        return lhs == rhs
    }
    
    func makeJSONAble(bank: Bank, bankAccounts: [BankAccount]) -> [String: Any] {
        var bankAccountDict: [String: Any] = [:]
        var transactionsDict: [String: Any] = [:]
        
        for bankAccount in bankAccounts {
            
            for transaction in bankAccount.transactions {
                transactionsDict["transactions"] = ["amount": transaction.amount, "description": transaction.description ?? "none", "vendorName": transaction.vendorName, "datePosted": transaction.datePosted, "dateCreated": transaction.dateCreated, "transactionType": transaction.transactionType]
            }
            
            bankAccountDict["accounts"] = ["identifer": bankAccount.identifier, "balance": bankAccount.balance, "transactions": transactionsDict]
        }
        
        
        var bankDict: [String: Any] = [:]
        bankDict["address"] = bank.address
        for employee in bank.employees {
            bankDict["employees"] = ["firstName": employee.firstName, "lastName": employee.lastName]
        }
        
        for customer in bank.customers {
            bankDict["customers"] = ["firstName": customer.firstName, "lastName": customer.lastName, "email": customer.email, "accounts": bankAccountDict]
        }
        
        bankDict["accounts"] = bankAccountDict
        
        print(bankDict)
        return bankDict
    }
    
    
    func jsonTransfer(jsonDict: [String: Any]) {
        
        let jsonRepresentation = try! JSONSerialization.data(withJSONObject: jsonDict, options: [])
        
        let returned = String(bytes: jsonRepresentation, encoding: .utf8)!
        
        let jsonData = returned.data(using: .utf8)!
        
        let jsonObject = try! JSONSerialization.jsonObject(with: jsonData, options:[]) as! [String:Any]
        
        print(jsonObject)
    }
}
