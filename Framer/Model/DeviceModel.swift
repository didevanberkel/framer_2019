//
//  DeviceModel.swift
//  Framer
//
//  Created by Dide van Berkel on 23/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

struct Device {
    
    var image: UIImage
    var title: String
    var subtitle: String
    
    init(image: UIImage, title: String, subtitle: String) {
        self.image = image
        self.title = title
        self.subtitle = subtitle
    }
}
