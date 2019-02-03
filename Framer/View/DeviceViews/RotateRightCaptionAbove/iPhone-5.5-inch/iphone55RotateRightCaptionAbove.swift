//
//  iphone55RotateRightCaptionAbove.swift
//  Framer
//
//  Created by Dide van Berkel on 27/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class iphone55RotateRightCaptionAbove: UIView {

    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupView(image: UIImage) {
        img.image = image
    }
    
}
