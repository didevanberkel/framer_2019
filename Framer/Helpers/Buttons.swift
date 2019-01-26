//
//  ButtonsHelper.swift
//  Framer
//
//  Created by Dide van Berkel on 25/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

class Buttons {
    
    class func setBackButton() -> UIButton {
        let backButton: UIButton = UIButton(type: UIButton.ButtonType.custom)
        backButton.setImage(UIImage(named: "barbutton_back"), for: .normal)
        backButton.contentHorizontalAlignment = .left
        
        return backButton
    }
    
    class func setBackBarButton(button: UIButton) -> UIBarButtonItem {
        let backBarButton = UIBarButtonItem(customView: button)
        backBarButton.customView?.translatesAutoresizingMaskIntoConstraints = false
        backBarButton.customView?.widthAnchor.constraint(equalToConstant: BarButtonTraits.width).isActive = true
        backBarButton.customView?.heightAnchor.constraint(equalToConstant: BarButtonTraits.height).isActive = true
        
        return backBarButton
    }
    
}
