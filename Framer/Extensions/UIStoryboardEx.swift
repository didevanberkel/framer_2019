//
//  UIStoryboardEx.swift
//  Framer
//
//  Created by Dide van Berkel on 24/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    
    class func main() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    class func home() -> UIStoryboard {
        return UIStoryboard(name: "Home", bundle: Bundle.main)
    }
    
    class func background() -> UIStoryboard {
        return UIStoryboard(name: "SelectBackground", bundle: Bundle.main)
    }
    
    class func text() -> UIStoryboard {
        return UIStoryboard(name: "SelectText", bundle: Bundle.main)
    }
    
    class func template() -> UIStoryboard {
        return UIStoryboard(name: "SelectTemplate", bundle: Bundle.main)
    }
    
    class func image() -> UIStoryboard {
        return UIStoryboard(name: "SelectImage", bundle: Bundle.main)
    }
}
