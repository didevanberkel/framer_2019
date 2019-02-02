//
//  thirdGeniPad129RotateLeftCaptionBelow.swift
//  Framer
//
//  Created by Dide van Berkel on 23/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class thirdGeniPad129RotateLeftCaptionBelow: UIView {
    
    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        img.layer.cornerRadius = 16.0
    }
    
    func setupView(image: UIImage) {
        img.image = image
    }

}
