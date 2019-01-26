//
//  Fonts.swift
//  Framer
//
//  Created by Dide van Berkel on 25/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

struct Font {
    
    // Bebas Neue Regular
    static func futuraCondensedMedium(size: CGFloat) -> UIFont {
        return UIFont(name: "Futura-CondensedMedium", size: size)!
    }
    
    // Bebas Neue Light
    static func futuraCondensedExtraBold(size: CGFloat) -> UIFont {
        return UIFont(name: "Futura-CondensedExtraBold", size: size)!
    }
    
    // Bebas Neue Bold
    static func futuraMedium(size: CGFloat) -> UIFont {
        return UIFont(name: "Futura-Medium", size: size)!
    }
    
    static func futuraMediumItalic(size: CGFloat) -> UIFont {
        return UIFont(name: "Futura-MediumItalic", size: size)!
    }
    
    static func futuraBold(size: CGFloat) -> UIFont {
        return UIFont(name: "Futura-Bold", size: size)!
    }
    
}

