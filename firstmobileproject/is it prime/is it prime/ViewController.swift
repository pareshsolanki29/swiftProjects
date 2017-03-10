//
//  ViewController.swift
//  is it prime
//
//  Created by paresh solanki on 12/22/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var enterAnswer: UITextField!
    
    @IBOutlet var anwerText: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        
        var number = Int(enterAnswer.text!)
        if number != nil{
            var primeNumber = true
              if number == 1{
                 primeNumber = false
                 }
            if number != 2 && number != 1{
                for var i = 2; i < number; i++{
                    if number % 2 == 0{
                      primeNumber = false
                    }
                }
            }
            if primeNumber == true {
                anwerText.text = "the numner \(number) is prime"
            }
            if primeNumber == false {
                anwerText.text = "the numner \(number) is not prime"
            }
            
        }else {
            anwerText.text = "please enter valid number"
        }
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

