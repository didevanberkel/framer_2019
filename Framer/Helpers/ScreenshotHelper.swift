//
//  ScreenshotHelper.swift
//  Framer
//
//  Created by Dide van Berkel on 26/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

class ScreenshotHelper {
    
    class func addTemplateViews(pickedDevices: [DeviceType], pickedTemplates: [TemplateType]) -> [UIView] {
        var views = [UIView]()
        
        for device in pickedDevices {
            switch device {
            case .iPhone55:
                for pickedTemplate in pickedTemplates {
                    switch pickedTemplate {
                    case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone55FullView", owner: self, options: nil)?.first as? iPhone55FullView {
                            views.append(deviceView)
                        }
                    case .captionBelow:
                        break
                    case .captionAbove:
                        break
                    case .rotateCaptionBelow:
                        break
                    case .rotateCaptionAbove:
                        break
                    case .screenshot, .screenshotCaptionBelow, .screenshotCaptionAbove:
                        break
                    }
                }
            case .iPhone65:
                for pickedTemplate in pickedTemplates {
                    switch pickedTemplate {
                    case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone65FullView", owner: self, options: nil)?.first as? iPhone65FullView {
                            views.append(deviceView)
                        }
                    case .captionBelow:
                        break
                    case .captionAbove:
                        break
                    case .rotateCaptionBelow:
                        break
                    case .rotateCaptionAbove:
                        break
                    case .screenshot, .screenshotCaptionBelow, .screenshotCaptionAbove:
                        break
                    }
                }
            case .iPad129second:
                for pickedTemplate in pickedTemplates {
                    switch pickedTemplate {
                    case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("secondGeniPad129FullView", owner: self, options: nil)?.first as? secondGeniPad129FullView {
                            views.append(deviceView)
                        }
                    case .captionBelow:
                        break
                    case .captionAbove:
                        break
                    case .rotateCaptionBelow:
                        break
                    case .rotateCaptionAbove:
                        break
                    case .screenshot, .screenshotCaptionBelow, .screenshotCaptionAbove:
                        break
                    }
                }
                
            case .iPad129third:
                for pickedTemplate in pickedTemplates {
                    switch pickedTemplate {
                    case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("thirdGeniPad129FullView", owner: self, options: nil)?.first as? thirdGeniPad129FullView {
                            views.append(deviceView)
                        }
                    case .captionBelow:
                        break
                    case .captionAbove:
                        break
                    case .rotateCaptionBelow:
                        break
                    case .rotateCaptionAbove:
                        break
                    case .screenshot, .screenshotCaptionBelow, .screenshotCaptionAbove:
                        break
                    }
                }
            }
        }
        
        return views
    }
}

