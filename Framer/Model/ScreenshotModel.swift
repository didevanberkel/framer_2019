//
//  ScreenshotModel.swift
//  Framer
//
//  Created by Dide van Berkel on 26/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

struct ScreenshotModel {
    
    var device: DeviceType
    var template: TemplateType
    var image: UIImage
    var textFont: UIFont
    var textColor: UIColor
    var title: String
    var subtitle: String
    var backgroundColors: [UIColor]
    
    init(device: DeviceType, template: TemplateType, image: UIImage, textFont: UIFont, textColor: UIColor, title: String, subtitle: String, backgroundColors: [UIColor]) {
        
        self.device = device
        self.template = template
        self.textFont = textFont
        self.textColor = textColor
        self.image = image
        self.title = title
        self.subtitle = subtitle
        self.backgroundColors = backgroundColors
    }
    
}
