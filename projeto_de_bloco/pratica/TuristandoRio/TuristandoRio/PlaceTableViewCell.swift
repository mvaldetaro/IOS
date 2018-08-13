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
    @IBOutlet weak var lbAddress: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
