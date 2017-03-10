//
//  ViewController.swift
//  finger count
//
//  Created by paresh solanki on 12/22/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var guessed: UITextField!
    
    @IBOutlet weak var finalAnswer: UITextField!
    var randomNum = arc4random() % 6
    var guessAns = Int(guessed.text)
    
    @IBAction func submitAnswer(sender: AnyObject) {
        
        if guessAns == randomNum{
            finalAnswer.text = "you guessed right"
        }
        else{
            finalAnswer.text = "wrong the answer was\(guessAns)"
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

