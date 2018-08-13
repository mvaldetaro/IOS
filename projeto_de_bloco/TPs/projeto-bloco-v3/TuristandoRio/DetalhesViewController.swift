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
    @IBOutlet weak var viewDetalhes: UIView!
    @IBOutlet weak var viewNotaDetalhes: UIView!
    @IBOutlet weak var btNavegar: UIButton!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var btCall: UIButton!
    
    var strEndereco:String?
    var geocoder = CLGeocoder()
    var location:CLLocationManager?
    var place = CLLocationCoordinate2D()
    var localName:String?
    var callNumber:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewMap.showsUserLocation = true
        viewMap.showsBuildings = true

        CardView.card(viewDetalhes)
        CircleView.view(viewNotaDetalhes)
        
        btCall.layer.cornerRadius = 5.0
        btNavegar.layer.cornerRadius = 5.0
        
        viewImage.clipsToBounds = true
        
        viewNome.text = detalhes!["nome"] as? String
        viewImage.image = UIImage(named: detalhes!["image"] as! String)
        viewEndereco.text = detalhes!["address"] as? String
        viewDescricao.text = detalhes!["description"] as? String
        viewTipo.text = detalhes!["tipo"] as? String
        viewNota.text = detalhes!["nota"] as? String
        viewTelefone.text = detalhes!["telefone"] as? String
        strEndereco = detalhes!["address"] as? String
        
        self.localName = detalhes!["nome"] as? String
        callNumber = (detalhes!["telefone"] as? String)!
        callNumber = callNumber.stringByReplacingOccurrencesOfString("[^\\d+]", withString: "", options: .RegularExpressionSearch, range: callNumber.startIndex..<callNumber.endIndex)
        
        geocoder.geocodeAddressString(strEndereco!,completionHandler: {(placemarks: [CLPlacemark]?, error: NSError?) -> Void in
            if (placemarks?.count > 0) {
                let resultado: CLPlacemark = (placemarks?[0])!
                let placemark: MKPlacemark = MKPlacemark(placemark: resultado)
                let region = MKCoordinateRegionMakeWithDistance(placemark.coordinate, 200, 200)
                
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
        let destination = self.place
        let placemark = MKPlacemark(coordinate: destination, addressDictionary: nil)
        let goDirections = MKMapItem(placemark: placemark)
        goDirections.name = self.localName!
        goDirections.openInMapsWithLaunchOptions([MKLaunchOptionsDirectionsModeDriving: MKLaunchOptionsDirectionsModeKey])
    }

    @IBAction func btnCall(sender: AnyObject) {
        
        if callNumber == "" {
            print("Não há número de telefone")
            let alert = UIAlertController(title: "Não é possível realizar chamada", message: "Este ponto turístico não possuí número de telefone.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
            if let telefoneUrl = NSURL(string: callNumber){
                UIApplication.sharedApplication().openURL(telefoneUrl)
            }
            print(callNumber)
        }
    }
}