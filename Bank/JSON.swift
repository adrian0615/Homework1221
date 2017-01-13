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
    
    
    func jsonTransfer(jsonDict: [String: Any]) {
        
        let jsonRepresentation = try! JSONSerialization.data(withJSONObject: jsonDict, options: [])
        
        let returned = String(bytes: jsonRepresentation, encoding: .utf8)!
        
        let jsonData = returned.data(using: .utf8)!
        
        let jsonObject = try! JSONSerialization.jsonObject(with: jsonData, options:[]) as! [String:Any]
        
        print(jsonObject)
    }
}
