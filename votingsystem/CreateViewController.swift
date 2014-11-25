//
//  CreateViewController.swift
//  votingsystem
//
//  Created by Javlon Usmanov on 11/25/14.
//  Copyright (c) 2014 KostaqPapa. All rights reserved.
//

import Foundation

class CreateViewController : UIViewController {
 
    @IBOutlet weak var question1: UITextField!
    @IBOutlet weak var question2: UITextField!
    @IBOutlet weak var asnwer1: UITextField!
    @IBOutlet weak var answer2: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.question1.layer.shadowOffset = CGSizeMake(0.2, 0.2)
        self.question1.layer.shadowOpacity = 0.8
        self.question1.layer.cornerRadius = 10
        
        self.question2.layer.shadowOffset = CGSizeMake(0.2, 0.2)
        self.question2.layer.shadowOpacity = 0.8
        self.question2.layer.cornerRadius = 10
        
        self.asnwer1.layer.shadowOffset = CGSizeMake(0.2, 0.2)
        self.asnwer1.layer.shadowOpacity = 0.8
        self.asnwer1.layer.cornerRadius = 10
        
        self.answer2.layer.shadowOffset = CGSizeMake(0.2, 0.2)
        self.answer2.layer.shadowOpacity = 0.8
        self.answer2.layer.cornerRadius = 10
        
        self.button.layer.shadowOffset = CGSizeMake(0.2, 0.2)
        self.button.layer.shadowOpacity = 0.8
        self.button.layer.cornerRadius = 10
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}