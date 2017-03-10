//
//  ViewController.swift
//  justLabel
//
//  Created by paresh solanki on 12/29/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textValu: UIView!
    
    @IBOutlet var displayText: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        displayText.text = textValu.text
    }
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
     self.view.endEditing(true)
    }
}

