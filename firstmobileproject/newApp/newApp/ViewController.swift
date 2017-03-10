//
//  ViewController.swift
//  newApp
//
//  Created by paresh solanki on 12/17/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myFirstLabel: UILabel!
    var iPhoneLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myFirstLabel = UILabel()
        iPhoneLabel = UILabel()
        addLabels() 
      
        let tapGesture = UITapGestureRecognizer(target: self, action: Selector("handleTapGesture:"))
        view.addGestureRecognizer(tapGesture)
    }
    func handleTapGesture (tapGesture: UITapGestureRecognizer ){
        print("tap")
        addLabels()
    }
    
    func addLabels(){
        myFirstLabel.text = "My First"
        myFirstLabel.font = UIFont.systemFontOfSize(36)
        myFirstLabel.sizeToFit()
        myFirstLabel.center = CGPoint(x: 100, y: 40)
        view.addSubview(myFirstLabel)
        
        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.0, options: [], animations: {
            self.myFirstLabel.center = CGPoint(x: 100, y: 40 + 200)
            
            }, completion: nil)
        
        iPhoneLabel.text = "iPhone App"
        iPhoneLabel.font = UIFont.boldSystemFontOfSize(40)
        iPhoneLabel.sizeToFit()
        iPhoneLabel.center = CGPoint(x: 200, y: 90)
        view.addSubview(iPhoneLabel)
        iPhoneLabel.alpha = 0
        
        
        UIView.animateWithDuration(2.0, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: [], animations: {
            self.iPhoneLabel.center = CGPoint(x: 200, y: 90 + 200)
            self.iPhoneLabel.alpha = 1
            
            }, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

