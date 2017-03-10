//
//  FirstViewController.swift
//  tabbed view
//
//  Created by paresh solanki on 12/29/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit

var toDOItems = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return toDOItems.count
        
    }
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = toDOItems[indexPath.row]
        return cell
        
    }
    internal func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if editingStyle == UITableViewCellEditingStyle.Delete{
            
            toDOItems.removeAtIndex(indexPath.row)
            
            NSUserDefaults.standardUserDefaults().setObject(toDOItems, forKey: "toDOItems")
            
            toDoList.reloadData()
            
        }
        
    }
    

    @IBOutlet var toDoList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (NSUserDefaults.standardUserDefaults().objectForKey("toDOItems") != nil){
            
            
      toDOItems = NSUserDefaults.standardUserDefaults().objectForKey("toDOItems") as! [String]
            
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(animated: Bool) {
        toDoList.reloadData()
    }


}

