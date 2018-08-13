//
//  ViewController.swift
//  TuristandoRio
//
//  Created by Magno Valdetaro on 5/14/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource , UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var bairros:NSArray?
    var pontos:NSArray?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let bundlePath = NSBundle.mainBundle().pathForResource("Bairros", ofType: "plist"){
            if let dicionario = NSDictionary(contentsOfFile: bundlePath){
                bairros = dicionario["bairros"] as? NSArray
                tableView.reloadData()
                
            }
        }
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (pontos?.count)!
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:PlaceTableViewCell = tableView.dequeueReusableCellWithIdentifier("placeCell", forIndexPath: indexPath) as! PlaceTableViewCell
        
        if let ponto:NSDictionary = pontos![indexPath.row] as? NSDictionary {
            cell.lbNome.text = ponto["nome"] as? String
            cell.lbAddress.text = ponto["address"] as? String
            cell.lbDesc.text = ponto["description"] as? String
            cell.lbTipo.text = ponto["tipo"] as? String
            cell.lbNota.text = ponto["nota"] as? String
            cell.lbTel.text = ponto["telefone"] as? String
            cell.imageCell.image = UIImage(named: ponto["image"] as! String)
        }
        return cell
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

