//
//  ViewController.swift
//  where am i
//
//  Created by paresh solanki on 12/30/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate{

    @IBOutlet var longitudeLabel: UILabel!
    
    @IBOutlet var latitudeLabel: UILabel!
    
    @IBOutlet var altitudeLabel: UILabel!
    
    @IBOutlet var speedLabel: UILabel!
    
    @IBOutlet var corseLabel: UILabel!
    
    @IBOutlet var addressLabel: UILabel!
    
    var manager: CLLocationManager!
    override func viewDidLoad() {
        super.viewDidLoad()
        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }

    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
       print(locations)
       var  userlocation:CLLocation = locations[0] as! CLLocation
        self.latitudeLabel.text = "\(userlocation.coordinate.latitude)"
        self.longitudeLabel.text = "\(userlocation.coordinate.longitude)"
        self.altitudeLabel.text = "\(userlocation.altitude)"
        self.speedLabel.text = "\(userlocation.speed)"
        self.corseLabel.text = "\(userlocation.course)"
        CLGeocoder().reverseGeocodeLocation(userlocation, completionHandler: {(placemarks, errors) -> Void in
            
            if errors != nil{
                print(errors)
            }else {
                if let p = CLPlacemark(placemark: placemarks?[0] as! CLPlacemark){
                print(p)
                }
                
            }
        })
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

