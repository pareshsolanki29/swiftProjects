//
//  SecondViewController.swift
//  tabbed view
//
//  Created by paresh solanki on 12/29/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var items: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        
        toDOItems.append(items.text!)
        items.text = ""
        NSUserDefaults.standardUserDefaults().setObject(toDOItems, forKey: "toDOItems")
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
    func textShudReturnText (textField: UITextField!) -> Bool {
        items.resignFirstResponder()
        return true
        
    }

}

