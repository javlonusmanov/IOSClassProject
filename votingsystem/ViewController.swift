//
//  ViewController.swift
//  votingsystem
//
//  Created by Kosta on 11/14/14.
//  Copyright (c) 2014 KostaqPapa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstNameUITextField: UITextField!
    @IBOutlet var lastNameUITextField: UITextField!
    @IBOutlet var ageUITextField: UITextField!
    @IBOutlet var ssnUITextField: UITextField!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var testObject: PFObject = PFObject(className: "testObject")
        testObject["key"] = "value"
        testObject.save()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

