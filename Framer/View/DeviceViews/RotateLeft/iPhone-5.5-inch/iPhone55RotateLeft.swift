//
//  iPhone55RotateLeft.swift
//  Framer
//
//  Created by Dide van Berkel on 27/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class iPhone55RotateLeft: UIView {

    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupView(image: UIImage) {
        //img.image = image
        
        let degrees: CGFloat = 25.0
        let radians: CGFloat = degrees * (.pi / 180)
        img.transform = CGAffineTransform(rotationAngle: radians)
    }
    
}
