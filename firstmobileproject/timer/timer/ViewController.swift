//
//  ViewController.swift
//  timer
//
//  Created by paresh solanki on 12/22/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = NSTimer()
    var count = 0
    
       func result() {
         count++
         timerCountDown.text = "\(count)"
         }

    @IBAction func pause(sender: AnyObject) {
        timerCountDown.invalidate()
        
    }
    @IBOutlet var timerCountDown: UILabel!
    
    
    @IBAction func stop(sender: AnyObject) {
         timerCountDown.invalidate()
         count = 0
    }
    
    @IBAction func play(sender: AnyObject) {
        
        
               timer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector: Selector("result"), userInfo: nil, repeats: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector: Selector("result"), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

