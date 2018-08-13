//
//  TableViewController.swift
//  tp9
//
//  Created by Magno Valdetaro on 5/15/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import UIKit
import CoreLocation

class BairrosViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var tableViewBairros: UITableView!
    
    let pontosSegueIdentifier = "ShowPontosSegue"
    var bairros:NSArray?
    var indexBairro:Int = 0
    let locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Localização do Usuario
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        
        if let bundlePath = NSBundle.mainBundle().pathForResource("Bairros", ofType: "plist"){
            if let dicionario = NSDictionary(contentsOfFile: bundlePath){
                bairros = dicionario["bairros"] as? NSArray
                tableViewBairros.reloadData()
            }
        }
        

        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == pontosSegueIdentifier,
            let destination = segue.destinationViewController as? ViewController,
            pontosIndex = tableViewBairros.indexPathForSelectedRow?.row {
            destination.pontos = bairros![pontosIndex]["pontos"] as? NSArray
            destination.loc = locationManager
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (bairros?.count)!
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell:BairroTableViewCell = tableView.dequeueReusableCellWithIdentifier("bairroCell", forIndexPath: indexPath) as! BairroTableViewCell
        
        if let bairro:NSDictionary = bairros![indexPath.row] as? NSDictionary {
            cell.lbBairro.text = bairro["nome"] as? String
            cell.lbPlaceCount.text = String(bairro["pontos"]!.count)
        }
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        bairros![indexPath.row]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
