//
//  MainViewController.swift
//  votingsystem
//
//  Created by Javlon Usmanov on 11/25/14.
//  Copyright (c) 2014 KostaqPapa. All rights reserved.
//

import Foundation

class MainViewController : UIViewController {
    

    @IBOutlet weak var titles: UILabel!
    @IBOutlet weak var create: UIButton!
    @IBOutlet weak var play: UIButton!
    
    
    @IBAction func createPressed(sender: AnyObject) {
            }
    
    @IBAction func playPressed(sender: AnyObject) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.create.layer.shadowOffset = CGSizeMake(0.2, 0.2)
        self.create.layer.shadowColor = UIColor.brownColor().CGColor
        self.create.layer.shadowOpacity = 0.8
        self.create.layer.cornerRadius = 10

        self.play.layer.shadowOffset = CGSizeMake(0.2, 0.2)
        self.play.layer.shadowColor = UIColor.brownColor().CGColor
        self.play.layer.shadowOpacity = 0.8
        self.play.layer.cornerRadius = 10

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
