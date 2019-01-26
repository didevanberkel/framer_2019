//
//  UILabelEx.swift
//  Framer
//
//  Created by Dide van Berkel on 25/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    func setVCTitle(title: String) {
        
        text = title
        textColor = Colors.hexToUIColor(hex: "#09203f")
        font = Font.futuraCondensedMedium(size: 18.0)
    }
}
