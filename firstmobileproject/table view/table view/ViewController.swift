//
//  ViewController.swift
//  table view
//
//  Created by paresh solanki on 12/29/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
 var cellContent = ["pappi","loo","lolo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 3
        
    }
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = cellContent[indexPath.row]
        return cell
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

