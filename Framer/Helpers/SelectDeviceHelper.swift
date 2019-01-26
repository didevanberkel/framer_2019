//
//  SelectDeviceHelper.swift
//  Framer
//
//  Created by Dide van Berkel on 23/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

class SelectDeviceHelper {
    
    class func getDevicesForAppStore() -> [SelectDeviceModel] {
        
        let iPhone55 = SelectDeviceModel(image: UIImage(named: "iphone-55-silver") ?? UIImage(), title: "iPhone 5,5 inch", subtitle: "Required device", type: .iPhone55)
        let iPhone65 = SelectDeviceModel(image: UIImage(named: "iphone-65-silver") ?? UIImage(), title: "iPhone 6,5 inch", subtitle: "Optional device", type: .iPhone65)
        let iPad2nd = SelectDeviceModel(image: UIImage(named: "ipad-129-2nd-silver") ?? UIImage(), title: "iPad 12,9 inch, 2nd gen", subtitle: "Required device", type: .iPad129second)
        let iPad3rd = SelectDeviceModel(image: UIImage(named: "ipad-129-2nd-silver") ?? UIImage(), title: "iPad 12,9 inch, 3rd gen", subtitle: "Optional device", type: .iPad129third)
        
        return [iPhone55, iPhone65, iPad2nd, iPad3rd]
        
    }
}

