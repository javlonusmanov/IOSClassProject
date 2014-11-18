//
//  User.swift
//  votingsystem
//
//  Created by Kosta on 11/18/14.
//  Copyright (c) 2014 KostaqPapa. All rights reserved.
//

import Foundation
import UIKit

class User{
    
    var firstName: String
    var lastName: String
    var age: String
    var ssn: String
    
    init(firstName: String, lastName: String, age: String, ssn: String){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.ssn = ssn
    }
}
