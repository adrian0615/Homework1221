//
//  Person.swift
//  Bank
//
//  Created by Adrian McDaniel on 12/20/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import Foundation





class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
}

enum CustomerType {
    case employee
    case regular
}


class Customer : Person {
    var customerType: CustomerType
    var email: String
    init(firstName: String, lastName: String, customerType: CustomerType, email: String) {
        self.customerType = customerType
        self.email = email
        super.init(firstName: firstName, lastName: lastName)
    }
    
}
