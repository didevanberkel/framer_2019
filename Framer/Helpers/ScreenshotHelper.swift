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
    
    class func addTemplateViews(pickedDevices: [DeviceType], pickedTemplates: [TemplateType]) -> [DeviceModel] {
        var views = [DeviceModel]()
        
        for device in pickedDevices {
            switch device {
            case .iPhone55:
                for pickedTemplate in pickedTemplates {
                    switch pickedTemplate {
                    case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone55FullView", owner: HomeViewController.self, options: nil)?.first as? iPhone55FullView {
                            views.append(DeviceModel(device: .iPhone55, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .captionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone55CaptionBelow", owner: HomeViewController.self, options: nil)?.first as? iPhone55CaptionBelow {
                            views.append(DeviceModel(device: .iPhone55, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .captionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone55CaptionAbove", owner: HomeViewController.self, options: nil)?.first as? iPhone55CaptionAbove {
                            views.append(DeviceModel(device: .iPhone55, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateLeft:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone55RotateLeft", owner: HomeViewController.self, options: nil)?.first as? iPhone55RotateLeft {
                            views.append(DeviceModel(device: .iPhone55, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateLeftCaptionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone55RotateLeftCaptionBelow", owner: HomeViewController.self, options: nil)?.first as? iPhone55RotateLeftCaptionBelow {
                            views.append(DeviceModel(device: .iPhone55, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateLeftCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone55RotateLeftCaptionAbove", owner: HomeViewController.self, options: nil)?.first as? iPhone55RotateLeftCaptionAbove {
                            views.append(DeviceModel(device: .iPhone55, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateRight:
                        if let deviceView = Bundle.main.loadNibNamed("iphone55RotateRight", owner: HomeViewController.self, options: nil)?.first as? iphone55RotateRight {
                            views.append(DeviceModel(device: .iPhone55, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateRightCaptionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("iphone55RotateRightCaptionBelow", owner: HomeViewController.self, options: nil)?.first as? iphone55RotateRightCaptionBelow {
                            views.append(DeviceModel(device: .iPhone55, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateRightCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("iphone55RotateRightCaptionAbove", owner: HomeViewController.self, options: nil)?.first as? iphone55RotateRightCaptionAbove {
                            views.append(DeviceModel(device: .iPhone55, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .screenshot, .screenshotCaptionBelow, .screenshotCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone55Screenshot", owner: HomeViewController.self, options: nil)?.first as? iPhone55Screenshot {
                            views.append(DeviceModel(device: .iPhone55, template: pickedTemplate, deviceView: deviceView))
                        }
                    }
                }
            case .iPhone65:
                for pickedTemplate in pickedTemplates {
                    switch pickedTemplate {
                    case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone65FullView", owner: HomeViewController.self, options: nil)?.first as? iPhone65FullView {
                            views.append(DeviceModel(device: .iPhone65, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .captionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone65CaptionBelow", owner: HomeViewController.self, options: nil)?.first as? iPhone65CaptionBelow {
                            views.append(DeviceModel(device: .iPhone65, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .captionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone65CaptionAbove", owner: HomeViewController.self, options: nil)?.first as? iPhone65CaptionAbove {
                            views.append(DeviceModel(device: .iPhone65, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateLeft:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone65RotateLeft", owner: HomeViewController.self, options: nil)?.first as? iPhone65RotateLeft {
                            views.append(DeviceModel(device: .iPhone65, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateLeftCaptionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone65RotateLeftCaptionBelow", owner: HomeViewController.self, options: nil)?.first as? iPhone65RotateLeftCaptionBelow {
                            views.append(DeviceModel(device: .iPhone65, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateLeftCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone65RotateLeftCaptionAbove", owner: HomeViewController.self, options: nil)?.first as? iPhone65RotateLeftCaptionAbove {
                            views.append(DeviceModel(device: .iPhone65, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateRight:
                        if let deviceView = Bundle.main.loadNibNamed("iphone65RotateRight", owner: HomeViewController.self, options: nil)?.first as? iphone65RotateRight {
                            views.append(DeviceModel(device: .iPhone65, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateRightCaptionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("iphone65RotateRightCaptionBelow", owner: HomeViewController.self, options: nil)?.first as? iphone65RotateRightCaptionBelow {
                            views.append(DeviceModel(device: .iPhone65, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateRightCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("iphone65RotateRightCaptionAbove", owner: HomeViewController.self, options: nil)?.first as? iphone65RotateRightCaptionAbove {
                            views.append(DeviceModel(device: .iPhone65, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .screenshot, .screenshotCaptionBelow, .screenshotCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone65Screenshot", owner: HomeViewController.self, options: nil)?.first as? iPhone65Screenshot {
                            views.append(DeviceModel(device: .iPhone65, template: pickedTemplate, deviceView: deviceView))
                        }
                    }
                }
            case .iPad129second:
                for pickedTemplate in pickedTemplates {
                    switch pickedTemplate {
                    case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("secondGeniPad129FullView", owner: HomeViewController.self, options: nil)?.first as? secondGeniPad129FullView {
                            views.append(DeviceModel(device: .iPad129second, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .captionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("secondGeniPad129CaptionBelow", owner: HomeViewController.self, options: nil)?.first as? secondGeniPad129CaptionBelow {
                            views.append(DeviceModel(device: .iPad129second, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .captionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("secondGeniPad129CaptionAbove", owner: HomeViewController.self, options: nil)?.first as? secondGeniPad129CaptionAbove {
                            views.append(DeviceModel(device: .iPad129second, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateLeft:
                        if let deviceView = Bundle.main.loadNibNamed("secondGeniPad129RotateLeft", owner: HomeViewController.self, options: nil)?.first as? secondGeniPad129RotateLeft {
                            views.append(DeviceModel(device: .iPad129second, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateLeftCaptionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("secondGeniPad129RotateLeftCaptionBelow", owner: HomeViewController.self, options: nil)?.first as? secondGeniPad129RotateLeftCaptionBelow {
                            views.append(DeviceModel(device: .iPad129second, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateLeftCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("secondGeniPad129RotateLeftCaptionAbove", owner: HomeViewController.self, options: nil)?.first as? secondGeniPad129RotateLeftCaptionAbove {
                            views.append(DeviceModel(device: .iPad129second, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateRight:
                        if let deviceView = Bundle.main.loadNibNamed("secondGeniPad129RotateRight", owner: HomeViewController.self, options: nil)?.first as? secondGeniPad129RotateRight {
                            views.append(DeviceModel(device: .iPad129second, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateRightCaptionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("secondGeniPad129RotateRightCaptionBelow", owner: HomeViewController.self, options: nil)?.first as? secondGeniPad129RotateRightCaptionBelow {
                            views.append(DeviceModel(device: .iPad129second, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateRightCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("secondGeniPad129RotateRightCaptionAbove", owner: HomeViewController.self, options: nil)?.first as? secondGeniPad129RotateRightCaptionAbove {
                            views.append(DeviceModel(device: .iPad129second, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .screenshot, .screenshotCaptionBelow, .screenshotCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("secondGeniPad129Screenshot", owner: HomeViewController.self, options: nil)?.first as? secondGeniPad129Screenshot {
                            views.append(DeviceModel(device: .iPad129second, template: pickedTemplate, deviceView: deviceView))
                        }
                    }
                }
            case .iPad129third:
                for pickedTemplate in pickedTemplates {
                    switch pickedTemplate {
                    case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("thirdGeniPad129FullView", owner: HomeViewController.self, options: nil)?.first as? thirdGeniPad129FullView {
                            views.append(DeviceModel(device: .iPad129third, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .captionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("thirdGeniPad129CaptionBelow", owner: HomeViewController.self, options: nil)?.first as? thirdGeniPad129CaptionBelow {
                            views.append(DeviceModel(device: .iPad129third, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .captionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("thirdGeniPad129CaptionAbove", owner: HomeViewController.self, options: nil)?.first as? thirdGeniPad129CaptionAbove {
                            views.append(DeviceModel(device: .iPad129third, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateLeft:
                        if let deviceView = Bundle.main.loadNibNamed("thirdGeniPad129RotateLeft", owner: HomeViewController.self, options: nil)?.first as? thirdGeniPad129RotateLeft {
                            views.append(DeviceModel(device: .iPad129third, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateLeftCaptionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("thirdGeniPad129RotateLeftCaptionBelow", owner: HomeViewController.self, options: nil)?.first as? thirdGeniPad129RotateLeftCaptionBelow {
                            views.append(DeviceModel(device: .iPad129third, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateLeftCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("thirdGeniPad129RotateLeftCaptionAbove", owner: HomeViewController.self, options: nil)?.first as? thirdGeniPad129RotateLeftCaptionAbove {
                            views.append(DeviceModel(device: .iPad129third, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateRight:
                        if let deviceView = Bundle.main.loadNibNamed("thirdGeniPad129RotateRight", owner: HomeViewController.self, options: nil)?.first as? thirdGeniPad129RotateRight {
                            views.append(DeviceModel(device: .iPad129third, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateRightCaptionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("thirdGeniPad129RotateRightCaptionBelow", owner: HomeViewController.self, options: nil)?.first as? thirdGeniPad129RotateRightCaptionBelow {
                            views.append(DeviceModel(device: .iPad129third, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .rotateRightCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("thirdGeniPad129RotateRightCaptionAbove", owner: HomeViewController.self, options: nil)?.first as? thirdGeniPad129RotateRightCaptionAbove {
                            views.append(DeviceModel(device: .iPad129third, template: pickedTemplate, deviceView: deviceView))
                        }
                    case .screenshot, .screenshotCaptionBelow, .screenshotCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("thirdGeniPad129Screenshot", owner: HomeViewController.self, options: nil)?.first as? thirdGeniPad129Screenshot {
                            views.append(DeviceModel(device: .iPad129third, template: pickedTemplate, deviceView: deviceView))
                        }
                    }
                }
            }
        }
        
        return views
    }
}

