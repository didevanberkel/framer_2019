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
    
    class func getDevicesForAppStore() -> [Device] {
        
        let iPhone55 = Device(image: UIImage(named: "iphone-55-silver") ?? UIImage(), title: "iPhone 5,5 inch", subtitle: "Required device")
        let iPhone65 = Device(image: UIImage(named: "iphone-65-silver") ?? UIImage(), title: "iPhone 6,5 inch", subtitle: "Optional device")
        let iPad2nd = Device(image: UIImage(named: "ipad-129-2nd-silver") ?? UIImage(), title: "iPad 12,9 inch, 2nd gen", subtitle: "Required device")
        let iPad3rd = Device(image: UIImage(named: "ipad-129-2nd-silver") ?? UIImage(), title: "iPad 12,9 inch, 3rd gen", subtitle: "Optional device")
        
        return [iPhone55, iPhone65, iPad2nd, iPad3rd]
        
    }
}
