//
//  iPhone65CaptionBelow.swift
//  Framer
//
//  Created by Dide van Berkel on 22/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class iPhone65CaptionBelow: UIView {

    @IBOutlet weak var imgView: UIView!
    @IBOutlet weak var deviceFrame: UIImageView!
    @IBOutlet weak var img: UIImageView!
    
    var deviceImgStr: String? {
        didSet {
            deviceFrame.image = UIImage(named: deviceImgStr ?? "")
        }
    }
    
    var deviceRotation: CGFloat? {
        didSet {
            if let rotation = deviceRotation {
                imgView.transform = CGAffineTransform(rotationAngle: CGFloat(rotation * .pi / 180))
            }
        }
    }
    
    var deviceContent: String? {
        didSet {
            if let content = deviceContent {
                img.image = UIImage(named: content)
            }
        }
    }
    
}
