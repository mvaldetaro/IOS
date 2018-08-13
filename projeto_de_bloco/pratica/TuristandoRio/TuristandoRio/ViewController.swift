//
//  ViewController.swift
//  TuristandoRio
//
//  Created by Magno Valdetaro on 5/14/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var places:NSArray?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let bundlePath = NSBundle.mainBundle().pathForResource("Places", ofType: "plist"){
            if let dicionario = NSDictionary(contentsOfFile: bundlePath){
                places = dicionario["places"] as? NSArray
                tableView.reloadData()
                
            }
        }
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (places?.count)!
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:PlaceTableViewCell = tableView.dequeueReusableCellWithIdentifier("placeCell", forIndexPath: indexPath) as! PlaceTableViewCell
        
        if let place:NSDictionary = places![indexPath.row] as? NSDictionary {
            cell.lbNome.text = place["name"] as? String
            cell.lbAddress.text = place["address"] as? String
            
            // crop image
            let urlImage = UIImage(named: place["image"] as! String)
            let image: UIImage = ImageUtil().cropToSquare(image: urlImage!)
            
            cell.imageCell.image = image
        }
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let index = tableView.indexPathForSelectedRow {
            let detailVC = segue.destinationViewController as! DetailViewController
            let dictionary = places![index.row] as? NSDictionary
            detailVC.dicPlace = dictionary
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

