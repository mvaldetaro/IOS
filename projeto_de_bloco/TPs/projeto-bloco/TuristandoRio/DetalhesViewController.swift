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

class DetalhesViewController: UIViewController {
    var detalhes:NSDictionary?
    
    @IBOutlet weak var viewImage: UIImageView!
    @IBOutlet weak var viewMap: MKMapView!
    @IBOutlet weak var viewNome: UILabel!
    @IBOutlet weak var viewEndereco: UILabel!
    @IBOutlet weak var viewDescricao: UILabel!
    @IBOutlet weak var viewTelefone: UILabel!
    @IBOutlet weak var viewNota: UILabel!
    @IBOutlet weak var viewTipo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewNome.text = detalhes!["nome"] as? String
        viewImage.image = UIImage(named: detalhes!["image"] as! String)
        viewEndereco.text = detalhes!["address"] as? String
        viewDescricao.text = detalhes!["description"] as? String
        viewTipo.text = detalhes!["tipo"] as? String
        viewNota.text = detalhes!["nota"] as? String
        viewTelefone.text = detalhes!["telefone"] as? String
        
        
        print(detalhes)
        
        
    }

}