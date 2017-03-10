//
//  ViewController.swift
//  calculator
//
//  Created by paresh solanki on 12/18/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var widthTextField: UITextField!
    
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var outputLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonPressed(sender: AnyObject) {
        if let width = widthTextField.text.toInt(){
            if let height = heightTextField.text.toInt(){
                var area = width * height
                outputLabel.text = "\(area)"
            }
        }
    }
}

