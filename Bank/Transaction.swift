//
//  Transaction.swift
//  Bank
//
//  Created by Adrian McDaniel on 1/13/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


class Transaction :  Equatable {
    public static func == (lhs: Transaction, rhs: Transaction) -> Bool {
        return lhs.amount == rhs.amount && lhs.description == rhs.description && lhs.vendorName == rhs.vendorName && lhs.dateCreated == rhs.dateCreated && lhs .datePosted == rhs.datePosted
    }
    
    var amount: Double
    var description: String? = nil
    var vendorName: String
    var datePosted = Date()
    var dateCreated = Date()
    
    init(amount: Double, vendorName: String) {
        self.amount = amount
        self.vendorName = vendorName
    }
    
    enum TransactionType {
        case deposit
        case withdrawal
        case noTransaction
    }
    
    var transactionType: TransactionType {
        if amount < 0 {
            return TransactionType.withdrawal
        } else if amount > 0 {
            return TransactionType.withdrawal
        } else {
            return TransactionType.noTransaction
        }
    }
}
