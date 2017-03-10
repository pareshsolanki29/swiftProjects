//
//  ViewController.swift
//  tipCalculatorforaGroup
//
//  Created by paresh solanki on 12/22/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalBilltext: UITextField!
    
    @IBOutlet weak var tipPercentageText: UITextField!
    
    @IBOutlet weak var noOfPeopleText: UITextField!
    
    @IBOutlet weak var tipOutputText: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        
        print("tip is")
        
        if let totalBill = Int(totalBilltext.text!){
            if let tipPercentage = Int(tipPercentageText.text!){
                if let noOfPeople = Int(noOfPeopleText.text!){
                    let finalTip = ((totalBill * tipPercentage) / noOfPeople) / 100
                    tipOutputText.text = "\(finalTip)"
                }
                
            }
        }
    }

}

