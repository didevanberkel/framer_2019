//
//  HomeViewController.swift
//  Framer
//
//  Created by Dide van Berkel on 24/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tabBar: UITabBar!
    @IBOutlet weak var scrollParent: UIView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    private var scrollView = UIScrollView()
    
    var deviceViews = [DeviceModel]()
    
    var pickedDevices = [DeviceType]()
    var pickedTemplates = [TemplateType]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScrollView()
        
        tabBar.delegate = self
        
        deviceViews = createDeviceViews()
        setupDeviceViews(deviceModels: deviceViews)
        
        pageControl.numberOfPages = deviceViews.count
        pageControl.currentPage = 0
        
        let backButton = Buttons.setBackButton()
        backButton.addTarget(self, action: #selector(backButtonPressed), for: UIControl.Event.touchUpInside)
        let backBarButton = Buttons.setBackBarButton(button: backButton)
        navigationItem.leftBarButtonItem = backBarButton
        navigationItem.title = "navbar_home".localized
        
        view.applyGradient(colors: [Colors.hexToUIColor(hex: "#B7F8DB"), Colors.hexToUIColor(hex: "#50A7C2")])
    }
    
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
    
    private func setupScrollView() {
        scrollView.backgroundColor = UIColor.clear
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
        scrollParent.addSubview(scrollView)
        NSLayoutConstraint.activate([
            
            scrollView.leadingAnchor.constraint(equalTo: scrollParent.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: scrollParent.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: scrollParent.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: scrollParent.bottomAnchor)
            
            ])
    }
    
    private func setupDeviceViews(deviceModels: [DeviceModel]) {
        
        for sub in scrollView.subviews {
            sub.removeFromSuperview()
        }
        
        var priorAnchor = scrollView.leadingAnchor
        
        for i in 0 ..< deviceModels.count {
            // Set the constraints of the appstore view.
            if let appStoreView = Bundle.main.loadNibNamed("AppStoreView", owner: self, options: nil)?.first as? AppStoreView {
                
                let deviceModel = deviceViews[i]
                
                // set the proper aspect ratio of the specific device.
                var appStoreViewWidth: CGFloat = 0.0
                var appStoreViewHeight: CGFloat = 0.0
                
                var deviceViewWidth: CGFloat = 0.0
                var deviceViewHeight: CGFloat = 0.0
                
                switch deviceModel.device {
                case .iPhone55:
                    // for full devices
                    appStoreViewWidth = 1242
                    appStoreViewHeight = 2208
                    
                    deviceViewWidth = 2550
                    deviceViewHeight = 3182
//                    if deviceModel.template == .captionAbove || deviceModel.template == .captionBelow || deviceModel.template == .rotateLeftCaptionAbove || deviceModel.template == .rotateLeftCaptionBelow || deviceModel.template == .rotateRightCaptionAbove || deviceModel.template == .rotateRightCaptionBelow {
//                        deviceViewWidth = 2550
//                        deviceViewHeight = 2300
//                    } else {
//
//                    }
                case .iPhone65:
                    // for full devices
                    appStoreViewWidth = 1242
                    appStoreViewHeight = 2688
                    
                case .iPad129second:
                    break
                case .iPad129third:
                    break
                }
                
                // This is just a transparent view to add the dev view on.
                let transparentView = UIView()
                transparentView.translatesAutoresizingMaskIntoConstraints = false
                transparentView.backgroundColor = UIColor.clear
                appStoreView.translatesAutoresizingMaskIntoConstraints = false
                appStoreView.backgroundColor = UIColor.clear
                deviceModel.deviceView.translatesAutoresizingMaskIntoConstraints = false
                
                scrollView.addSubview(transparentView)
                transparentView.addSubview(appStoreView)
                appStoreView.deviceView.addSubview(deviceModel.deviceView)
                
                // Eventually, the dev view is exported as png, so this view has to be the right aspect ratio for the app store, and the right specs (backgroundColor, etc).
                let aspectRatio = appStoreView.heightAnchor.constraint(equalTo: appStoreView.widthAnchor, multiplier: appStoreViewHeight/appStoreViewWidth)
                let aspectRatioDevice = deviceModel.deviceView.heightAnchor.constraint(equalTo: deviceModel.deviceView.widthAnchor, multiplier: deviceViewHeight/deviceViewWidth)
                
                NSLayoutConstraint.activate([
                    
                    //transparentView.centerYAnchor.constraint(equalTo: scrollParent.centerYAnchor),
                    transparentView.leadingAnchor.constraint(equalTo: priorAnchor),
                    transparentView.bottomAnchor.constraint(equalTo: scrollParent.bottomAnchor),
                    transparentView.topAnchor.constraint(equalTo: scrollParent.topAnchor),
                    transparentView.heightAnchor.constraint(equalTo: scrollParent.heightAnchor),
                    transparentView.widthAnchor.constraint(equalTo: scrollParent.widthAnchor),
                    
                    aspectRatio,
                    appStoreView.centerXAnchor.constraint(equalTo: transparentView.centerXAnchor),
                    appStoreView.centerYAnchor.constraint(equalTo: transparentView.centerYAnchor),
                    appStoreView.topAnchor.constraint(equalTo: transparentView.topAnchor, constant: 24),
                    appStoreView.bottomAnchor.constraint(equalTo: transparentView.bottomAnchor, constant: -24),
                    appStoreView.leadingAnchor.constraint(greaterThanOrEqualTo: transparentView.leadingAnchor),
                    appStoreView.trailingAnchor.constraint(lessThanOrEqualTo: transparentView.trailingAnchor),
                    
                    aspectRatioDevice,
                    deviceModel.deviceView.centerXAnchor.constraint(equalTo: appStoreView.deviceView.centerXAnchor),
                    deviceModel.deviceView.centerYAnchor.constraint(equalTo: appStoreView.deviceView.centerYAnchor),
                    deviceModel.deviceView.leadingAnchor.constraint(equalTo: appStoreView.deviceView.leadingAnchor),
                    deviceModel.deviceView.trailingAnchor.constraint(equalTo: appStoreView.deviceView.trailingAnchor)
                    
                    ])
                
                priorAnchor = transparentView.trailingAnchor
            }
            
        }
        
        scrollView.trailingAnchor.constraint(equalTo: priorAnchor).isActive = true
    }
    
    private func createDeviceViews() -> [DeviceModel] {
        let views = ScreenshotHelper.addTemplateViews(pickedDevices: pickedDevices, pickedTemplates: pickedTemplates)
        return views
    }
    
    private func changeDeviceColor(views: [DeviceModel], color: DeviceColor) {
        ScreenshotHelper.changeDeviceColor(devices: views, color: color)
    }
    
}

extension HomeViewController: UITabBarDelegate {
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 1:
            guard let vc = UIStoryboard.deviceColor().instantiateViewController(withIdentifier: "SelectDeviceColorViewController") as? SelectDeviceColorViewController else {
                return
            }
            navigationController?.present(vc, animated: true, completion: nil)
        case 2:
            guard let vc = UIStoryboard.background().instantiateViewController(withIdentifier: "SelectBackgroundViewController") as? SelectBackgroundViewController else {
                return
            }
            vc.callback = { result in
                // Apply this color to all the dev views.
                print(result)
            }
            navigationController?.present(vc, animated: true, completion: nil)
        case 3:
            guard let vc = UIStoryboard.image().instantiateViewController(withIdentifier: "SelectImageViewController") as? SelectImageViewController else {
                return
            }
            navigationController?.present(vc, animated: true, completion: nil)
        case 4:
            guard let vc = UIStoryboard.text().instantiateViewController(withIdentifier: "SelectTextViewController") as? SelectTextViewController else {
                return
            }
            navigationController?.present(vc, animated: true, completion: nil)
        default:
            break
        }
        
    }
}

extension HomeViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        pageControl.currentPage = Int(pageIndex)
    }
}
