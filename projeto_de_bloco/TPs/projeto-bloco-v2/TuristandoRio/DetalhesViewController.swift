//
//  DetalhesViewController.swift
//  projeto-bloco
//
//  Created by Magno Valdetaro on 6/5/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

import UIKit
import MapKit
import CoreLocation

class DetalhesViewController: UIViewController, CLLocationManagerDelegate {
    var detalhes:NSDictionary?
    
    @IBOutlet weak var viewImage: UIImageView!
    @IBOutlet weak var viewMap: MKMapView!
    @IBOutlet weak var viewNome: UILabel!
    @IBOutlet weak var viewEndereco: UILabel!
    @IBOutlet weak var viewDescricao: UILabel!
    @IBOutlet weak var viewTelefone: UILabel!
    @IBOutlet weak var viewNota: UILabel!
    @IBOutlet weak var viewTipo: UILabel!
    
    var strEndereco:String?
    var geocoder = CLGeocoder()
    var location:CLLocationManager?
    var place = CLLocationCoordinate2D()
    var localName:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewMap.showsUserLocation = true
        viewMap.showsBuildings = true
        
        viewNome.text = detalhes!["nome"] as? String
        viewImage.image = UIImage(named: detalhes!["image"] as! String)
        viewEndereco.text = detalhes!["address"] as? String
        viewDescricao.text = detalhes!["description"] as? String
        viewTipo.text = detalhes!["tipo"] as? String
        viewNota.text = detalhes!["nota"] as? String
        viewTelefone.text = detalhes!["telefone"] as? String
        self.localName = detalhes!["nome"] as? String
        strEndereco = detalhes!["address"] as? String
        
        geocoder.geocodeAddressString(strEndereco!,completionHandler: {(placemarks: [CLPlacemark]?, error: NSError?) -> Void in
            if (placemarks?.count > 0) {
                let resultado: CLPlacemark = (placemarks?[0])!
                let placemark: MKPlacemark = MKPlacemark(placemark: resultado)
                let region = MKCoordinateRegionMakeWithDistance(placemark.coordinate, 100, 100)
                
                self.place = placemark.coordinate
                self.viewMap.setRegion(region, animated: true)
                self.viewMap.addAnnotation(placemark)
            }
        })
        
    }
    
    func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(polyline: overlay as! MKPolyline)
        renderer.strokeColor = UIColor.blueColor()
        return renderer
    }
    
    @IBAction func btNavegar(sender: AnyObject) {
        
        //let userLocation = self.location!.location
        let destination = self.place
        let placemark = MKPlacemark(coordinate: destination, addressDictionary: nil)
        let goDirections = MKMapItem(placemark: placemark)
        goDirections.name = self.localName!
        goDirections.openInMapsWithLaunchOptions([MKLaunchOptionsDirectionsModeDriving: MKLaunchOptionsDirectionsModeKey])
        
    }

}