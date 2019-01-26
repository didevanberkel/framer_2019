//
//  SelectDeviceModel.swift
//  Framer
//
//  Created by Dide van Berkel on 26/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

struct SelectDeviceModel {
    
    var image: UIImage
    var title: String
    var subtitle: String
    var type: DeviceType
    
    init(image: UIImage, title: String, subtitle: String, type: DeviceType) {
        
        self.image = image
        self.title = title
        self.subtitle = subtitle
        self.type = type
    }
}
