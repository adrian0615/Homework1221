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




class Customer : Person, Equatable {
    var email: String
    
    
    init(firstName: String, lastName: String, email: String) {
        self.email = email
        super.init(firstName: firstName, lastName: lastName)
    }
    
}
