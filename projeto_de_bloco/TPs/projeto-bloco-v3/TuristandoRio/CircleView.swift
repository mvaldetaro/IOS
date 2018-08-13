//
//  CircleView.swift
//  projeto-bloco-v3
//
//  Created by Magno Valdetaro on 6/11/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import UIKit

class CircleView {
    static func view(view:UIView) {
        view.layer.cornerRadius = view.frame.size.width/2
        view.layer.borderColor = UIColor.clearColor().CGColor
        view.clipsToBounds = true
        view.layer.borderWidth = 5.0
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.blackColor().CGColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0);
        view.layer.shadowOpacity = 0.2
    }
}
