//
//  ViewController.swift
//  animation
//
//  Created by paresh solanki on 12/29/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1

    @IBOutlet var alien: UIImageView!
    
    
    @IBAction func animateAlien(_ sender: AnyObject) {
        alien.image = UIImage(named: "frame2.png")
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

