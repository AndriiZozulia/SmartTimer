//
//  MapViewController.swift
//  SmartTimer
//
//  Created by Andrew on 17.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation
import MapKit
import FirebaseAuth

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
  
  var locationManager:CLLocationManager!
  var mapView:MKMapView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    // Create and Add MapView to our main view
    createMapView()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    determineCurrentLocation()
  }
  
  func createMapView()
  {
    mapView = MKMapView()
    
      let leftMargin:CGFloat = 0
      let topMargin:CGFloat = 0
      let mapWidth:CGFloat = view.frame.size.width
      let mapHeight:CGFloat = 350
    
      mapView.frame = CGRect(x: leftMargin, y: topMargin, width: mapWidth, height: mapHeight)
    
    mapView.mapType = MKMapType.standard
    mapView.isZoomEnabled = true
    mapView.isScrollEnabled = true
    
    
    // Or, if needed, we can position map in the center of the view
    mapView.center = view.center
    
    view.addSubview(mapView)
  }
  
  func determineCurrentLocation()
  {
    locationManager = CLLocationManager()
    locationManager.delegate = self
    locationManager.desiredAccuracy = kCLLocationAccuracyBest
    locationManager.requestAlwaysAuthorization()
    
    if CLLocationManager.locationServicesEnabled() {
      //locationManager.startUpdatingHeading()
      locationManager.startUpdatingLocation()
    }
  }
  
  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    let userLocation:CLLocation = locations[0] as CLLocation
    
    // Call stopUpdatingLocation() to stop listening for location updates,
    // other wise this function will be called every time when user location changes.
    //manager.stopUpdatingLocation()
    
    let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
    let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    mapView.setRegion(region, animated: true)
    
    // Drop a pin at user's Current Location
    let myAnnotation: MKPointAnnotation = MKPointAnnotation()
    myAnnotation.coordinate = CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude);
    myAnnotation.title = Auth.auth().currentUser?.email
    mapView.addAnnotation(myAnnotation)
  }
  
  private func locationManager(manager: CLLocationManager, didFailWithError error: NSError)
  {
    print("Error \(error)")
  }
  
}
