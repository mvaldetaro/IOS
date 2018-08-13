//
//  BairroTableViewCell.swift
//  tp9
//
//  Created by Magno Valdetaro on 5/15/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import UIKit


class BairroTableViewCell: UITableViewCell {

    @IBOutlet weak var lbBairro: UILabel!
    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var uiBadge: UIView!
    @IBOutlet weak var lbPlaceCount: UILabel!
    @IBOutlet weak var imgPlace: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentView.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1)
        CardView.card(cardView)
        
        uiBadge.layer.cornerRadius = 5
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
