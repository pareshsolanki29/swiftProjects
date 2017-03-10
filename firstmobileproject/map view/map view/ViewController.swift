//
//  ViewController.swift
//  map view
//
//  Created by paresh solanki on 12/30/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet var map: MKMapView!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        super.viewDidLoad()
        var latitude: CLLocationDegrees = 43.095181
        var longitude: CLLocationDegrees = -79.006424
        var latDelta: CLLocationDegrees = 0.5
        var lonDelta:CLLocationDegrees = 0.5
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        var location:CLLocationCoordinate2D =  CLLocationCoordinate2DMake(latitude,  longitude)
        var region:MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        map.setRegion(region, animated: true)
        var annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "yo yo"
        annotation.subtitle = "Ill go here"
        map.addAnnotation(annotation)
        
        
        var uilpgr = UILongPressGestureRecognizer(target: self, action: "action:")
        uilpgr.minimumPressDuration = 2
        map.addGestureRecognizer(uilpgr)
        
        
    }
    
    func action(gestureRecogniser: UILongPressGestureRecognizer){
        var touchPoint = gestureRecogniser.locationInView(self.map)
        
        var newCoordinate: CLLocationCoordinate2D = map.convertPoint(touchPoint, toCoordinateFromView: self.map)
        
        var annotation = MKPointAnnotation()
        annotation.coordinate = newCoordinate
        annotation.title = "yo yo"
        annotation.subtitle = "Ill go here"
        map.addAnnotation(annotation)
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
     print(locations)
        var userLocation: CLLocation = locations[0] as! CLLocation
        var latitude = userLocation.coordinate.latitude
        var longitude = userLocation.coordinate.longitude
        var latDelta: CLLocationDegrees = 0.5
        var lonDelta:CLLocationDegrees = 0.5
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        var location:CLLocationCoordinate2D =  CLLocationCoordinate2DMake(latitude,  longitude)
        var region:MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        self.map.setRegion(region, animated: false)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

