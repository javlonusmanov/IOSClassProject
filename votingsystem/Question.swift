//
//  Question.swift
//  votingsystem
//
//  Created by John on 11/18/14.
//  Copyright (c) 2014 KostaqPapa. All rights reserved.
//

import Foundation

class Question {
	init(a1: String, a2: String, r1: String, r2: String) {
		answer1 = a1
		answer2 = a2
		result1 = r1
		result2 = r2
	}
	var answer1: String
	var answer2: String
	var result1: String
	var result2: String
}