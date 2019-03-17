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
                    case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove, .rotateLeft, .rotateRight:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone55FullView", owner: HomeViewController.self, options: nil)?.first as? iPhone55FullView {
                            
                            views.append(DeviceModel(device: .iPhone55, template: pickedTemplate, deviceView: deviceView))
                            
                            if pickedTemplate == .fullDevice || pickedTemplate == .fullDeviceCaptionAbove || pickedTemplate == .fullDeviceCaptionBelow {
                                deviceView.deviceImgStr = "iphone-55-fulldevice-\(standardColor)"
                            } else if pickedTemplate == .rotateLeft {
                                deviceView.deviceImgStr = "iphone-55-rotateleft-\(standardColor)"
                                deviceView.deviceRotation = leftRotation
                            } else if pickedTemplate == .rotateRight {
                                deviceView.deviceImgStr = "iphone-55-rotateright-\(standardColor)"
                                deviceView.deviceRotation = rightRotation
                            }
                        }
                    case .captionBelow, .rotateLeftCaptionBelow, .rotateRightCaptionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone55CaptionBelow", owner: HomeViewController.self, options: nil)?.first as? iPhone55CaptionBelow {
                            
                            views.append(DeviceModel(device: .iPhone55, template: pickedTemplate, deviceView: deviceView))
                            
                            if pickedTemplate == .captionBelow {
                                deviceView.deviceImgStr = "iphone-55-captionbelow-\(standardColor)"
                            } else if pickedTemplate == .rotateLeftCaptionBelow {
                                deviceView.deviceImgStr = "iphone-55-rotateleft-captionbelow-\(standardColor)"
                                deviceView.deviceRotation = leftRotation
                            } else if pickedTemplate == .rotateRightCaptionBelow {
                                deviceView.deviceImgStr = "iphone-55-rotateright-captionbelow-\(standardColor)"
                                deviceView.deviceRotation = rightRotation
                            }
                            
                        }
                    case .captionAbove, .rotateLeftCaptionAbove, .rotateRightCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone55CaptionAbove", owner: HomeViewController.self, options: nil)?.first as? iPhone55CaptionAbove {
                            
                            views.append(DeviceModel(device: .iPhone55, template: pickedTemplate, deviceView: deviceView))
                            
                            if pickedTemplate == .captionAbove {
                                deviceView.deviceImgStr = "iphone-55-captionabove-\(standardColor)"
                            } else if pickedTemplate == .rotateLeftCaptionAbove {
                                deviceView.deviceImgStr = "iphone-55-rotateleft-captionabove-\(standardColor)"
                                deviceView.deviceRotation = leftRotation
                            } else if pickedTemplate == .rotateRightCaptionAbove {
                                deviceView.deviceImgStr = "iphone-55-rotateright-captionabove-\(standardColor)"
                                deviceView.deviceRotation = rightRotation
                            }
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
                    case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove, .rotateLeft, .rotateRight:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone65FullView", owner: HomeViewController.self, options: nil)?.first as? iPhone65FullView {
                            
                            views.append(DeviceModel(device: .iPhone65, template: pickedTemplate, deviceView: deviceView))
                            
                            if pickedTemplate == .fullDevice || pickedTemplate == .fullDeviceCaptionAbove || pickedTemplate == .fullDeviceCaptionBelow {
                                deviceView.deviceImgStr = "iphone-65-fulldevice-\(standardColor)"
                            } else if pickedTemplate == .rotateLeft {
                                deviceView.deviceImgStr = "iphone-65-rotateleft-\(standardColor)"
                                deviceView.deviceRotation = leftRotation
                            } else if pickedTemplate == .rotateRight {
                                deviceView.deviceImgStr = "iphone-65-rotateright-\(standardColor)"
                                deviceView.deviceRotation = rightRotation
                            }
                        }
                    case .captionBelow, .rotateLeftCaptionBelow, .rotateRightCaptionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone65CaptionBelow", owner: HomeViewController.self, options: nil)?.first as? iPhone65CaptionBelow {
                            
                            views.append(DeviceModel(device: .iPhone65, template: pickedTemplate, deviceView: deviceView))
                            
                            if pickedTemplate == .captionBelow {
                                deviceView.deviceImgStr = "iphone-65-captionbelow-\(standardColor)"
                            } else if pickedTemplate == .rotateLeftCaptionBelow {
                                deviceView.deviceImgStr = "iphone-65-rotateleft-captionbelow-\(standardColor)"
                                deviceView.deviceRotation = leftRotation
                            } else if pickedTemplate == .rotateRightCaptionBelow {
                                deviceView.deviceImgStr = "iphone-65-rotateright-captionbelow-\(standardColor)"
                                deviceView.deviceRotation = rightRotation
                            }
                        }
                    case .captionAbove, .rotateLeftCaptionAbove, .rotateRightCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("iPhone65CaptionAbove", owner: HomeViewController.self, options: nil)?.first as? iPhone65CaptionAbove {
                            
                            views.append(DeviceModel(device: .iPhone65, template: pickedTemplate, deviceView: deviceView))
                            
                            if pickedTemplate == .captionAbove {
                                deviceView.deviceImgStr = "iphone-65-captionabove-\(standardColor)"
                            } else if pickedTemplate == .rotateLeftCaptionAbove {
                                deviceView.deviceImgStr = "iphone-65-rotateleft-captionabove-\(standardColor)"
                                deviceView.deviceRotation = leftRotation
                            } else if pickedTemplate == .rotateRightCaptionAbove {
                                deviceView.deviceImgStr = "iphone-65-rotateright-captionabove-\(standardColor)"
                                deviceView.deviceRotation = rightRotation
                            }
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
                    case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove, .rotateLeft, .rotateRight:
                        if let deviceView = Bundle.main.loadNibNamed("secondGeniPad129FullView", owner: HomeViewController.self, options: nil)?.first as? secondGeniPad129FullView {
                            
                            views.append(DeviceModel(device: .iPad129second, template: pickedTemplate, deviceView: deviceView))
                            
                            if pickedTemplate == .fullDevice || pickedTemplate == .fullDeviceCaptionAbove || pickedTemplate == .fullDeviceCaptionBelow {
                                deviceView.deviceImgStr = "ipad-1292nd-fulldevice-\(standardColor)"
                            } else if pickedTemplate == .rotateLeft {
                                deviceView.deviceImgStr = "ipad-1292nd-rotateleft-\(standardColor)"
                                deviceView.deviceRotation = leftRotation
                            } else if pickedTemplate == .rotateRight {
                                deviceView.deviceImgStr = "ipad-1292nd-rotateright-\(standardColor)"
                                deviceView.deviceRotation = rightRotation
                            }
                        }
                    case .captionBelow, .rotateLeftCaptionBelow, .rotateRightCaptionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("secondGeniPad129CaptionBelow", owner: HomeViewController.self, options: nil)?.first as? secondGeniPad129CaptionBelow {
                            
                            views.append(DeviceModel(device: .iPad129second, template: pickedTemplate, deviceView: deviceView))
                            
                            if pickedTemplate == .captionBelow {
                                deviceView.deviceImgStr = "ipad-1292nd-captionbelow-\(standardColor)"
                            } else if pickedTemplate == .rotateLeftCaptionBelow {
                                deviceView.deviceImgStr = "ipad-1292nd-rotateleft-captionbelow-\(standardColor)"
                                deviceView.deviceRotation = leftRotation
                            } else if pickedTemplate == .rotateRightCaptionBelow {
                                deviceView.deviceImgStr = "ipad-1292nd-rotateright-captionbelow-\(standardColor)"
                                deviceView.deviceRotation = rightRotation
                            }
                        }
                    case .captionAbove, .rotateLeftCaptionAbove, .rotateRightCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("secondGeniPad129CaptionAbove", owner: HomeViewController.self, options: nil)?.first as? secondGeniPad129CaptionAbove {
                            
                            views.append(DeviceModel(device: .iPad129second, template: pickedTemplate, deviceView: deviceView))
                            
                            if pickedTemplate == .captionAbove {
                                deviceView.deviceImgStr = "ipad-1292nd-captionabove-\(standardColor)"
                            } else if pickedTemplate == .rotateLeftCaptionAbove {
                                deviceView.deviceImgStr = "ipad-1292nd-rotateleft-captionabove-\(standardColor)"
                                deviceView.deviceRotation = leftRotation
                            } else if pickedTemplate == .rotateRightCaptionAbove {
                                deviceView.deviceImgStr = "ipad-1292nd-rotateright-captionabove-\(standardColor)"
                                deviceView.deviceRotation = rightRotation
                            }
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
                    case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove, .rotateLeft, .rotateRight:
                        if let deviceView = Bundle.main.loadNibNamed("thirdGeniPad129FullView", owner: HomeViewController.self, options: nil)?.first as? thirdGeniPad129FullView {
                            
                            views.append(DeviceModel(device: .iPad129third, template: pickedTemplate, deviceView: deviceView))
                            
                            if pickedTemplate == .fullDevice || pickedTemplate == .fullDeviceCaptionAbove || pickedTemplate == .fullDeviceCaptionBelow {
                                deviceView.deviceImgStr = "ipad-1293rd-fulldevice-\(standardColor)"
                            } else if pickedTemplate == .rotateLeft {
                                deviceView.deviceImgStr = "ipad-1293rd-rotateleft-\(standardColor)"
                                deviceView.deviceRotation = leftRotation
                            } else if pickedTemplate == .rotateRight {
                                deviceView.deviceImgStr = "ipad-1293rd-rotateright-\(standardColor)"
                                deviceView.deviceRotation = rightRotation
                            }
                        }
                    case .captionBelow, .rotateLeftCaptionBelow, .rotateRightCaptionBelow:
                        if let deviceView = Bundle.main.loadNibNamed("thirdGeniPad129CaptionBelow", owner: HomeViewController.self, options: nil)?.first as? thirdGeniPad129CaptionBelow {
                            
                            views.append(DeviceModel(device: .iPad129third, template: pickedTemplate, deviceView: deviceView))
                            
                            if pickedTemplate == .captionBelow {
                                deviceView.deviceImgStr = "ipad-1293rd-captionbelow-\(standardColor)"
                            } else if pickedTemplate == .rotateLeftCaptionBelow {
                                deviceView.deviceImgStr = "ipad-1293rd-rotateleft-captionbelow-\(standardColor)"
                                deviceView.deviceRotation = leftRotation
                            } else if pickedTemplate == .rotateRightCaptionBelow {
                                deviceView.deviceImgStr = "ipad-1293rd-rotateright-captionbelow-\(standardColor)"
                                deviceView.deviceRotation = rightRotation
                            }
                        }
                    case .captionAbove, .rotateLeftCaptionAbove, .rotateRightCaptionAbove:
                        if let deviceView = Bundle.main.loadNibNamed("thirdGeniPad129CaptionAbove", owner: HomeViewController.self, options: nil)?.first as? thirdGeniPad129CaptionAbove {
                            
                            views.append(DeviceModel(device: .iPad129third, template: pickedTemplate, deviceView: deviceView))
                            
                            if pickedTemplate == .captionAbove {
                                deviceView.deviceImgStr = "ipad-1293rd-captionabove-\(standardColor)"
                            } else if pickedTemplate == .rotateLeftCaptionAbove {
                                deviceView.deviceImgStr = "ipad-1293rd-rotateleft-captionabove-\(standardColor)"
                                deviceView.deviceRotation = leftRotation
                            } else if pickedTemplate == .rotateRightCaptionAbove {
                                deviceView.deviceImgStr = "ipad-1293rd-rotateright-captionabove-\(standardColor)"
                                deviceView.deviceRotation = rightRotation
                            }
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
    
    class func changeDeviceColor(devices: [DeviceModel], color: DeviceColor) {
        
        var newColor: String = "silver"
        switch color {
        case .silver:
            newColor = "silver"
        case .spaceGrey:
            newColor = "spacegrey"
        case .gold:
            newColor = "gold"
        }
        
        for device in devices {
            switch device.device {
            case .iPhone55:
                switch device.template {
                case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove:
                    if let dev = device.deviceView as? iPhone55FullView {
                        dev.deviceImgStr = "iphone-55-fulldevice-\(newColor)"
                    }
                case .captionBelow:
                    if let dev = device.deviceView as? iPhone55CaptionBelow {
                        dev.deviceImgStr = "iphone-55-captionbelow-\(newColor)"
                    }
                case .captionAbove:
                    if let dev = device.deviceView as? iPhone55CaptionAbove {
                        dev.deviceImgStr = "iphone-55-captionabove-\(newColor)"
                    }
                case .rotateLeft:
                    if let dev = device.deviceView as? iPhone55FullView {
                        dev.deviceImgStr = "iphone-55-rotateleft-\(newColor)"
                    }
                case .rotateLeftCaptionBelow:
                    if let dev = device.deviceView as? iPhone55CaptionBelow {
                        dev.deviceImgStr = "iphone-55-rotateleft-captionbelow-\(newColor)"
                    }
                case .rotateLeftCaptionAbove:
                    if let dev = device.deviceView as? iPhone55CaptionAbove {
                        dev.deviceImgStr = "iphone-55-rotateleft-captionabove-\(newColor)"
                    }
                case .rotateRight:
                    if let dev = device.deviceView as? iPhone55FullView {
                        dev.deviceImgStr = "iphone-55-rotateright-\(newColor)"
                    }
                case .rotateRightCaptionBelow:
                    if let dev = device.deviceView as? iPhone55CaptionBelow {
                        dev.deviceImgStr = "iphone-55-rotateright-captionbelow-\(newColor)"
                    }
                case .rotateRightCaptionAbove:
                    if let dev = device.deviceView as? iPhone55CaptionAbove {
                        dev.deviceImgStr = "iphone-55-rotateright-captionabove-\(newColor)"
                    }
                case .screenshot, .screenshotCaptionBelow, .screenshotCaptionAbove:
                    // TO DO!
                    break
                }
            case .iPhone65:
                switch device.template {
                case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove:
                    if let dev = device.deviceView as? iPhone65FullView {
                        dev.deviceImgStr = "iphone-65-fulldevice-\(newColor)"
                    }
                case .captionBelow:
                    if let dev = device.deviceView as? iPhone65CaptionBelow {
                        dev.deviceImgStr = "iphone-65-captionbelow-\(newColor)"
                    }
                case .captionAbove:
                    if let dev = device.deviceView as? iPhone65CaptionAbove {
                        dev.deviceImgStr = "iphone-65-captionabove-\(newColor)"
                    }
                case .rotateLeft:
                    if let dev = device.deviceView as? iPhone65FullView {
                        dev.deviceImgStr = "iphone-65-rotateleft-\(newColor)"
                    }
                case .rotateLeftCaptionBelow:
                    if let dev = device.deviceView as? iPhone65CaptionBelow {
                        dev.deviceImgStr = "iphone-65-rotateleft-captionbelow-\(newColor)"
                    }
                case .rotateLeftCaptionAbove:
                    if let dev = device.deviceView as? iPhone65CaptionAbove {
                        dev.deviceImgStr = "iphone-65-rotateleft-captionabove-\(newColor)"
                    }
                case .rotateRight:
                    if let dev = device.deviceView as? iPhone65FullView {
                        dev.deviceImgStr = "iphone-65-rotateright-\(newColor)"
                    }
                case .rotateRightCaptionBelow:
                    if let dev = device.deviceView as? iPhone65CaptionBelow {
                        dev.deviceImgStr = "iphone-65-rotateright-captionbelow-\(newColor)"
                    }
                case .rotateRightCaptionAbove:
                    if let dev = device.deviceView as? iPhone65CaptionAbove {
                        dev.deviceImgStr = "iphone-65-rotateright-captionabove-\(newColor)"
                    }
                case .screenshot, .screenshotCaptionBelow, .screenshotCaptionAbove:
                    break
                }
            case .iPad129second:
                switch device.template {
                case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove:
                    if let dev = device.deviceView as? secondGeniPad129FullView {
                        dev.deviceImgStr = "ipad-1292nd-fulldevice-\(standardColor)"
                    }
                case .captionBelow:
                    if let dev = device.deviceView as? secondGeniPad129CaptionBelow {
                        dev.deviceImgStr = "ipad-1292nd-captionbelow-\(standardColor)"
                    }
                case .captionAbove:
                    if let dev = device.deviceView as? secondGeniPad129CaptionAbove {
                        dev.deviceImgStr = "ipad-1292nd-captionabove-\(standardColor)"
                    }
                case .rotateLeft:
                    if let dev = device.deviceView as? secondGeniPad129FullView {
                        dev.deviceImgStr = "ipad-1292nd-rotateleft-\(standardColor)"
                    }
                case .rotateLeftCaptionBelow:
                    if let dev = device.deviceView as? secondGeniPad129CaptionBelow {
                        dev.deviceImgStr = "ipad-1292nd-rotateleft-captionbelow-\(standardColor)"
                    }
                case .rotateLeftCaptionAbove:
                    if let dev = device.deviceView as? secondGeniPad129CaptionAbove {
                        dev.deviceImgStr = "ipad-1292nd-rotateleft-captionabove-\(standardColor)"
                    }
                case .rotateRight:
                    if let dev = device.deviceView as? secondGeniPad129FullView {
                        dev.deviceImgStr = "ipad-1292nd-rotateright-\(standardColor)"
                    }
                case .rotateRightCaptionBelow:
                    if let dev = device.deviceView as? secondGeniPad129CaptionBelow {
                        dev.deviceImgStr = "ipad-1292nd-rotateright-captionbelow-\(standardColor)"
                    }
                case .rotateRightCaptionAbove:
                    if let dev = device.deviceView as? secondGeniPad129CaptionAbove {
                        dev.deviceImgStr = "ipad-1292nd-rotateright-captionabove-\(standardColor)"
                    }
                case .screenshot, .screenshotCaptionBelow, .screenshotCaptionAbove:
                    break
                }
            case .iPad129third:
                switch device.template {
                case .fullDevice, .fullDeviceCaptionBelow, .fullDeviceCaptionAbove:
                    if let dev = device.deviceView as? secondGeniPad129FullView {
                        dev.deviceImgStr = "ipad-1293rd-fulldevice-\(standardColor)"
                    }
                case .captionBelow:
                    if let dev = device.deviceView as? secondGeniPad129CaptionBelow {
                        dev.deviceImgStr = "ipad-1293rd-captionbelow-\(standardColor)"
                    }
                case .captionAbove:
                    if let dev = device.deviceView as? secondGeniPad129CaptionAbove {
                        dev.deviceImgStr = "ipad-1293rd-captionabove-\(standardColor)"
                    }
                case .rotateLeft:
                    if let dev = device.deviceView as? secondGeniPad129FullView {
                        dev.deviceImgStr = "ipad-1293rd-rotateleft-\(standardColor)"
                    }
                case .rotateLeftCaptionBelow:
                    if let dev = device.deviceView as? secondGeniPad129CaptionBelow {
                        dev.deviceImgStr = "ipad-1293rd-rotateleft-captionbelow-\(standardColor)"
                    }
                case .rotateLeftCaptionAbove:
                    if let dev = device.deviceView as? secondGeniPad129CaptionAbove {
                        dev.deviceImgStr = "ipad-1293rd-rotateleft-captionabove-\(standardColor)"
                    }
                case .rotateRight:
                    if let dev = device.deviceView as? secondGeniPad129FullView {
                        dev.deviceImgStr = "ipad-1293rd-rotateright-\(standardColor)"
                    }
                case .rotateRightCaptionBelow:
                    if let dev = device.deviceView as? secondGeniPad129CaptionBelow {
                        dev.deviceImgStr = "ipad-1293rd-rotateright-captionbelow-\(standardColor)"
                    }
                case .rotateRightCaptionAbove:
                    if let dev = device.deviceView as? secondGeniPad129CaptionAbove {
                        dev.deviceImgStr = "ipad-1293rd-rotateright-captionabove-\(standardColor)"
                    }
                case .screenshot, .screenshotCaptionBelow, .screenshotCaptionAbove:
                    break
                }
            }
        }
    }
}

