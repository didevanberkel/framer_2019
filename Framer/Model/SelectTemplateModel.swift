//
//  SelectTemplateModel.swift
//  Framer
//
//  Created by Dide van Berkel on 26/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

struct SelectTemplateModel {
    
    var image: UIImage
    var title: String
    var type: TemplateType
    
    init(image: UIImage, title: String, type: TemplateType) {
        
        self.image = image
        self.title = title
        self.type = type
    }
}
