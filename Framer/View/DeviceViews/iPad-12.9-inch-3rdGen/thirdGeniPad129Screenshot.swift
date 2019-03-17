//
//  thirdGeniPad129Screenshot.swift
//  Framer
//
//  Created by Dide van Berkel on 23/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class thirdGeniPad129Screenshot: UIView {
    
    @IBOutlet weak var img: UIImageView!
    
    var deviceContent: String? {
        didSet {
            if let content = deviceContent {
                img.image = UIImage(named: content)
            }
        }
    }
    
}
