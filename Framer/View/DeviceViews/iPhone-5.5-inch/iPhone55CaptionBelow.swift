//
//  iPhone55CaptionBelow.swift
//  Framer
//
//  Created by Dide van Berkel on 22/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class iPhone55CaptionBelow: UIView {

    @IBOutlet weak var imgView: UIView!
    @IBOutlet weak var deviceFrame: UIImageView!
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet var rotatedLeftConstraints: [NSLayoutConstraint]!
    @IBOutlet var rotatedRightConstraints: [NSLayoutConstraint]!
    @IBOutlet var normalConstraints: [NSLayoutConstraint]!
    
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
    
    override func layoutSubviews() {
        if let rotation = deviceRotation {
            for constraint in normalConstraints {
                constraint.isActive = false
            }
            if rotation < 0.0 {
                // left rotation
                for constraint in rotatedRightConstraints {
                    constraint.isActive = false
                }
                
                for constraint in rotatedLeftConstraints {
                    constraint.isActive = true
                }
                
                
            } else {
                for constraint in rotatedLeftConstraints {
                    constraint.isActive = false
                }
                for constraint in rotatedRightConstraints {
                    constraint.isActive = true
                }
                
            }
        } else {
            for constraint in rotatedRightConstraints {
                constraint.isActive = false
            }
            for constraint in rotatedLeftConstraints {
                constraint.isActive = false
            }
            for constraint in normalConstraints {
                constraint.isActive = true
            }
        }
    }
    
}
