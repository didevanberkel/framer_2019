//
//  ColorsHelper.swift
//  Framer
//
//  Created by Dide van Berkel on 25/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

class Colors {
    
    class func hexToUIColor(hex: String) -> UIColor {
        
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue: UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    class func rgbToUIColor(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {

        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1)
    }
    
    static var framerDarkBlue: UIColor {
        return hexToUIColor(hex: "09203f")
    }
    
    static var framerDarkPantone: UIColor {
        return hexToUIColor(hex: "#de6262")
    }
    
    static var framerLightPantone: UIColor {
        return hexToUIColor(hex: "#ffb88c")
    }
}
