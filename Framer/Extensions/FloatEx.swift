//
//  FloatEx.swift
//  Framer
//
//  Created by Dide van Berkel on 15/03/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

extension Float {
    
    func colorValue() -> CGFloat {
        
        return CGFloat((self ?? 0) / 255)
    }
}
