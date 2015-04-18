//
//  ViewController.swift
//  ROOP
//
//  Created by Kotaro Suto on 2015/04/18.
//  Copyright (c) 2015年 Kotaro Suto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    
    @IBOutlet var countLabel: UILabel!
    
    var password: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        resultLabel1.text = "?"
        resultLabel2.text = "?"
        resultLabel3.text = "?"
        resultLabel4.text = "?"
        
        countLabel.text = "0"
        
        password = Int(arc4random_uniform(10000))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func start() {
        
        resultLabel1.text = "?"
        resultLabel2.text = "?"
        resultLabel3.text = "?"
        resultLabel4.text = "?"
        countLabel.text = "0"
        password = Int(arc4random_uniform(10000))

        
        for i in 0..<10000 {
            countLabel.text = String(i)
            
            NSRunLoop.mainRunLoop().runUntilDate(NSDate(timeIntervalSinceNow: 0.0005))
            
            if i == password {
                var digits = [Int]()
                for j in 0..<4 {
                    digits.append(password % 10)
                    password/=10
                }
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
        }
    }
}




}