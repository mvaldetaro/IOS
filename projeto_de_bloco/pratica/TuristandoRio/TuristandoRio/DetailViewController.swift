//
//  DetailViewController.swift
//  TuristandoRio
//
//  Created by Magno Valdetaro on 5/15/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbAddress: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    var dicPlace:NSDictionary?
    
    var coordinatePlace:CLLocationCoordinate2D?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if dicPlace != nil {
            imageView.image = UIImage(named: dicPlace!["image"] as! String)
            lbName.text = dicPlace!["name"] as? String
            lbAddress.text = dicPlace!["address"] as? String
            
            btActionGeocoder()
        }
    }
    
    @IBAction func btActionDirections(sender: AnyObject) {
        
        if self.coordinatePlace != nil {
            
            // configura como será a navegação
            let launchOptions = [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving]
            let placemark = MKPlacemark(coordinate: self.coordinatePlace!, addressDictionary: nil)
            let mapItem = MKMapItem(placemark: placemark)
            mapItem.openInMapsWithLaunchOptions(launchOptions)
        }
        
    }
    
    func btActionGeocoder() {
        
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(lbAddress.text!) { (placemarks, error) -> Void in
            
            if let placemark:CLPlacemark = placemarks?[0]{
                let location = placemark.location
                
                if let coords:CLLocationCoordinate2D = location?.coordinate {
                    print("Latitude = \(coords.latitude), Longitude = \(coords.longitude)")
                    
                    self.coordinatePlace = coords
                    
                    let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
                    let region = MKCoordinateRegion(center: coords, span: span)
                    self.mapView.setRegion(region, animated: false)
                    
                    //Add Pin
                    let annotation = MKPointAnnotation()
                    annotation.coordinate = coords
                    annotation.title = self.dicPlace!["name"] as? String
                    annotation.subtitle = self.dicPlace!["address"] as? String
                    self.mapView.addAnnotation(annotation)
                    
                }
            } else {
                print("Geocode falhou. Erro ")
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
