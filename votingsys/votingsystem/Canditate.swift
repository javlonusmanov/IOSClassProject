//
//  Canditate.swift
//  votingsystem
//
//  Created by Kosta on 11/18/14.
//  Copyright (c) 2014 KostaqPapa. All rights reserved.
//

import Foundation
import UIKit

class Canditate{
    
    var firstName: String
    var lastName: String
    var votes: Int
    
    init(firstName: String, lastName: String, votes: Int){
        self.firstName = firstName
        self.lastName = lastName
        self.votes = votes
    }
}
