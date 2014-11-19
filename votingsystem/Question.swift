//
//  Question.swift
//  votingsystem
//
//  Created by John on 11/18/14.
//  Copyright (c) 2014 KostaqPapa. All rights reserved.
//

import Foundation

class Question {
	init(a1: String, a2: String, r: String) {
		answer1 = a1
		answer2 = a2
		result = r
	}
	var answer1: String
	var answer2: String
	var result: String
}