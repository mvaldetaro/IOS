//
//  CardView.swift
//  projeto-bloco-v3
//
//  Created by Magno Valdetaro on 6/11/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import UIKit


class CardView {
    static func card(view:UIView) {
        view.backgroundColor = UIColor.whiteColor()
        view.layer.cornerRadius = 2.0
        view.clipsToBounds = true
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.blackColor().CGColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0);
        view.layer.shadowOpacity = 0.2
    }

}