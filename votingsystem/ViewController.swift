//
//  ViewController.swift
//  votingsystem
//
//  Created by Kosta on 11/14/14.
//  Copyright (c) 2014 KostaqPapa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var testQuestions: [Question] = []
	var count: Int = 0
	
	//@IBOutlet var firstAnswer: UIButton!
	//@IBOutlet var secondAnswer: UIButton!
	@IBAction func Button1(sender: UIButton) {
		if (count>testQuestions.count-1) {
			count = 0
		}
		
		resultStr = testQuestions[count].result1
		count++
		viewDidLoad()
	}
	
	@IBAction func Button2(sender: UIButton) {
		if (count>testQuestions.count-1) {
			count = 0
		}
		
		resultStr = testQuestions[count].result2
		count++
		viewDidLoad()
	}
	
	@IBOutlet weak var Answer1Button: UIButton!
	@IBOutlet weak var Answer2Button: UIButton!
	@IBOutlet weak var result: UILabel!
	
	var firstAnswer: String = ""
	var secondAnswer: String = ""
	var resultStr: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var testObject: PFObject = PFObject(className: "testObject")
        testObject["key"] = "value"
        testObject.save()
		
		populateQuestions()
		//var randomNumber = Int(arc4random_uniform(UInt32(testQuestions.count)))
	Answer1Button.setTitle(testQuestions[count].answer1, forState:UIControlState.Normal)
	Answer2Button.setTitle(testQuestions[count].answer2, forState:UIControlState.Normal)
		
		result.text = resultStr
		
		firstAnswer = testQuestions[count].answer1
		secondAnswer = testQuestions[count].answer2
		println(firstAnswer)
		println(secondAnswer)
		
		//storeQuestion()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func populateQuestions() {
		testQuestions.append(Question(a1: "Wrestle a bear", a2: "Run from a bear", r1: "You're fearless", r2: "You're a coward"))
		testQuestions.append(Question(a1: "Take Sterling", a2: "Take Gallagher", r1: "You don't care about your GPA", r2: "You like snakes"))
		testQuestions.append(Question(a1: "Make an iOS app", a2: "Make an Android app", r1: "You're in the right place", r2: "Why did you take this class?"))
		testQuestions.append(Question(a1: "Use Swift", a2: "Use Google Go", r1: "Apple fanboy", r2: "Good luck"))
		testQuestions.append(Question(a1: "Take computer security", a2: "Take interactive graphics", r1: "Go hack an ATM", r2: "Pretty shapes and colors"))
		testQuestions.append(Question(a1: "Eat Pizza from Lackmann", a2: "Die of Hunger ", r1: "You dont know good pizza", r2: "I go to poly anyway"))
		testQuestions.append(Question(a1: "Write a lab report", a2: "Staple your eyes", r1: "You're just wrong", r2: "You took the easy way out" ))
		testQuestions.append(Question(a1: "Get a million dollars", a2: "Get a 4.0", r1: "Money, money, money!", r2: "You must want to go to grad school"))
	}
	
	
	
	func storeQuestion()
	{
		var gameScore = PFObject(className: "WYRather")
		var query = PFQuery(className: "WYRather")
		var lastResult1 = 0
		var lastResult2 = 0
		
		for i in 0..<testQuestions.count - 1
		{
			var question = testQuestions.last
			testQuestions.removeLast()
			gameScore.setObject(question?.answer1, forKey: "Question1")
			gameScore.setObject(question?.answer2, forKey: "Question2")
			//gameScore.setObject(0, forKey: "Result1")
			//gameScore.setObject(0, forKey: "Result2")
			gameScore.saveInBackgroundWithBlock{
				(success: Bool, error: NSError!) -> Void in
				
				if success
				{
					NSLog("Object created with id: \(gameScore.objectId)")
				}
				else
				{
					NSLog("%@", error)
				}
			}
			
			
			
		}
	}




}

