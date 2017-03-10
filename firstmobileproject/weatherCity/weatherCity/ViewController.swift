//
//  ViewController.swift
//  weatherCity
//
//  Created by paresh solanki on 12/29/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var city: UITextField!
    
    @IBAction func enterCity(sender: AnyObject) {
    }
    
    @IBOutlet var forecast: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var url = NSURL(string: "http://www.weather-forecast.com/locations/london/forecast/latest")
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
        if error == nil {
        
        var webContent = NSString(data: data!, encoding: NSUTF8StringEncoding) as NSString!
        
        }else{
        
        }
        
        
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

