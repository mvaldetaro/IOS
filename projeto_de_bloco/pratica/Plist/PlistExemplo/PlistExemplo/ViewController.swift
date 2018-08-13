//
//  ViewController.swift
//  PlistExemplo
//
//  Created by Magno Valdetaro on 5/14/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var carros:NSArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //se o arquivo Carros.plist  existe, caso exista, o convertemos de um Plist para um NSDictionary
        
        if let bundlePath = NSBundle.mainBundle().pathForResource("Carros", ofType: "plist") {
            if let dicionario = NSDictionary(contentsOfFile: bundlePath) {
                carros = dicionario["carros"] as? NSArray
                tableView.reloadData()
            }
        }
    }
    
    
    //retorna a quantidade de células a serem criadas de acordo com o tamanho do NSArray
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(carros?.count)
        return (carros?.count)!
    }
    
    //cria uma UITableViewCell e define o texto a ser exibido em cada célula
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "cell"
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(identifier)
        
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: identifier)
        }
        
        cell?.textLabel?.text = carros?[indexPath.row] as? String
        
        return cell!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

