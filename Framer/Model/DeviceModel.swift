//
//  DeviceModel.swift
//  Framer
//
//  Created by Dide van Berkel on 03/02/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

struct DeviceModel {
    
    var device: DeviceType
    var template: TemplateType
    var deviceView: UIView
    
    init(device: DeviceType, template: TemplateType, deviceView: UIView) {
        
        self.device = device
        self.template = template
        self.deviceView = deviceView
    }
}
