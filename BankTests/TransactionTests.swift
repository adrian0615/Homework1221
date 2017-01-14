//
//  TransactionTests.swift
//  Bank
//
//  Created by Adrian McDaniel on 1/13/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


import XCTest
@testable import Bank

class TransactionTests: XCTestCase {
    
    func transactionType() {
        var transaction: Transaction = Transaction(amount: -25.50, vendorName: "self")
        let success = transaction.transactionType
    }
}
