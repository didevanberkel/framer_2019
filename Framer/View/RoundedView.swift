//
//  RoundedView.swift
//  Framer
//
//  Created by Dide van Berkel on 25/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class RoundedView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.masksToBounds = false
        layer.cornerRadius = 4.0
        layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        
        layer.shadowRadius = 8.0
        layer.shadowOpacity = 0.4
        layer.shadowColor = Colors.framerDarkBlue.cgColor
    }

}
