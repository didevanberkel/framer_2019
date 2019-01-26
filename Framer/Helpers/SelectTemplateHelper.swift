//
//  SelectTemplateHelper.swift
//  Framer
//
//  Created by Dide van Berkel on 26/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

class SelectTemplateHelper {
    
    class func getTemplatesForAppStore() -> [SelectTemplateModel] {
        let fullDevice = SelectTemplateModel(image: UIImage(named: "") ?? UIImage(), title: "template_fulldevice".localized, type: .fullDevice)
        let fullDeviceCaptionBelow = SelectTemplateModel(image: UIImage(named: "") ?? UIImage(), title: "template_fulldevicecaptionbelow".localized, type: .fullDeviceCaptionBelow)
        let fullDeviceCaptionAbove = SelectTemplateModel(image: UIImage(named: "") ?? UIImage(), title: "template_fulldevicecaptionabove".localized, type: .fullDeviceCaptionAbove)
        let captionBelow = SelectTemplateModel(image: UIImage(named: "") ?? UIImage(), title: "template_captionbelow".localized, type: .captionBelow)
        let captionAbove = SelectTemplateModel(image: UIImage(named: "") ?? UIImage(), title: "template_captionabove".localized, type: .captionAbove)
        let rotateCaptionBelow = SelectTemplateModel(image: UIImage(named: "") ?? UIImage(), title: "template_rotatecaptionbelow".localized, type: .rotateCaptionBelow)
        let rotateCaptionAbove = SelectTemplateModel(image: UIImage(named: "") ?? UIImage(), title: "template_rotatecaptionabove".localized, type: .rotateCaptionAbove)
        let screenshot = SelectTemplateModel(image: UIImage(named: "") ?? UIImage(), title: "template_screenshot".localized, type: .screenshot)
        let screenshotCaptionBelow = SelectTemplateModel(image: UIImage(named: "") ?? UIImage(), title: "template_screenshotcaptionbelow".localized, type: .screenshotCaptionBelow)
        let screenshotCaptionAbove = SelectTemplateModel(image: UIImage(named: "") ?? UIImage(), title: "template_screenshotcaptionabove".localized, type: .screenshotCaptionAbove)
        
        return [fullDevice, fullDeviceCaptionBelow, fullDeviceCaptionAbove, captionBelow, captionAbove, rotateCaptionBelow, rotateCaptionAbove, screenshot, screenshotCaptionBelow, screenshotCaptionAbove]
        
    }
}
