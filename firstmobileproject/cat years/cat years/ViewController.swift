//
//  ViewController.swift
//  cat years
//
//  Created by paresh solanki on 12/17/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultAge: UILabel!
    @IBOutlet weak var age: UITextField!
    @IBAction func findAge(sender: AnyObject) {
        var catYears = Int(age.text!)
        var trueAge = catYears! * 7
        print(age.text)
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

