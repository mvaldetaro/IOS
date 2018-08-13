//
//  PlaceTableViewCell.swift
//  TuristandoRio
//
//  Created by Magno Valdetaro on 5/14/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var lbNome: UILabel!
    //@IBOutlet weak var lbAddress: UILabel!
    //@IBOutlet weak var lbDesc: UILabel!
    @IBOutlet weak var lbTipo: UILabel!
    @IBOutlet weak var lbNota: UILabel!
    //@IBOutlet weak var lbTel: UILabel!
    @IBOutlet weak var cardViewPlaces: UIView!
    @IBOutlet weak var viewNota: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1)
        CardView.card(cardViewPlaces)
        
        viewNota.layer.cornerRadius = viewNota.frame.size.width/2
        viewNota.layer.borderColor = UIColor.clearColor().CGColor
        viewNota.clipsToBounds = true
        viewNota.layer.borderWidth = 5.0
        viewNota.layer.masksToBounds = false
        viewNota.layer.shadowColor = UIColor.blackColor().CGColor
        viewNota.layer.shadowOffset = CGSize(width: 0, height: 0);
        viewNota.layer.shadowOpacity = 0.2
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
