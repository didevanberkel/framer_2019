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
        setupDeviceViews(deviceViews: deviceViews)
        
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
    
    private func setupDeviceViews(deviceViews: [DeviceModel]) {
        
        for sub in scrollView.subviews {
            sub.removeFromSuperview()
        }
        
        var priorAnchor = scrollView.leadingAnchor
        
        for i in 0 ..< deviceViews.count {
            let deviceView = deviceViews[i]
            
            switch deviceView.device {
            case .iPhone55:
                if let devView = Bundle.main.loadNibNamed("iPhone55DevView", owner: self, options: nil)?.first as? iPhone55DevView {
                    
                    let transparentView = UIView()
                    transparentView.translatesAutoresizingMaskIntoConstraints = false
                    transparentView.backgroundColor = UIColor.yellow
                    scrollView.addSubview(transparentView)
                    
                    devView.translatesAutoresizingMaskIntoConstraints = false
                    devView.backgroundColor = UIColor.clear
                    transparentView.addSubview(devView)
                    let devViewWidthAnchor = devView.widthAnchor.constraint(equalToConstant: 1242)
                    devViewWidthAnchor.priority = UILayoutPriority(rawValue: 250)
                    
                    deviceView.deviceView.translatesAutoresizingMaskIntoConstraints = false
                    devView.deviceView.addSubview(deviceView.deviceView)
                    let screenshotWidthAnchor = devView.widthAnchor.constraint(equalToConstant: 1436)
                    screenshotWidthAnchor.priority = UILayoutPriority(rawValue: 250)
                    
                    NSLayoutConstraint.activate([
                        
                        transparentView.centerYAnchor.constraint(equalTo: scrollParent.centerYAnchor),
                        transparentView.leadingAnchor.constraint(equalTo: priorAnchor),
                        transparentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
                        transparentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                        transparentView.heightAnchor.constraint(equalTo: scrollParent.heightAnchor),
                        transparentView.widthAnchor.constraint(equalTo: scrollParent.widthAnchor),
                        
                        devViewWidthAnchor,
                        devView.heightAnchor.constraint(equalTo: devView.widthAnchor, multiplier: 2208/1242),
                        
                        devView.centerYAnchor.constraint(equalTo: transparentView.centerYAnchor),
                        devView.centerXAnchor.constraint(equalTo: transparentView.centerXAnchor),
                        devView.topAnchor.constraint(greaterThanOrEqualTo: transparentView.topAnchor, constant: 24),
                        devView.bottomAnchor.constraint(lessThanOrEqualTo: transparentView.bottomAnchor, constant: -24),
                        devView.leadingAnchor.constraint(greaterThanOrEqualTo: transparentView.leadingAnchor, constant: 16),
                        devView.trailingAnchor.constraint(lessThanOrEqualTo: transparentView.trailingAnchor, constant: -16),
                        
                        screenshotWidthAnchor,
                        deviceView.deviceView.heightAnchor.constraint(equalTo: deviceView.deviceView.widthAnchor, multiplier: 2876/1436),
                        
                        deviceView.deviceView.centerYAnchor.constraint(equalTo: devView.deviceView.centerYAnchor),
                        deviceView.deviceView.centerXAnchor.constraint(equalTo: devView.deviceView.centerXAnchor),
                        deviceView.deviceView.topAnchor.constraint(equalTo: devView.deviceView.topAnchor),
                        deviceView.deviceView.bottomAnchor.constraint(equalTo: devView.deviceView.bottomAnchor),
                        deviceView.deviceView.leadingAnchor.constraint(greaterThanOrEqualTo: devView.deviceView.leadingAnchor),
                        deviceView.deviceView.trailingAnchor.constraint(lessThanOrEqualTo: devView.deviceView.trailingAnchor)
                        
                        ])
                    
                    priorAnchor = transparentView.trailingAnchor
                    
                }
            case .iPhone65:
                break
            case .iPad129second:
                break
            case .iPad129third:
                break
            }
        }
        
        scrollView.trailingAnchor.constraint(equalTo: priorAnchor).isActive = true
    }
    
    private func createDeviceViews() -> [DeviceModel] {
        let views = ScreenshotHelper.addTemplateViews(pickedDevices: pickedDevices, pickedTemplates: pickedTemplates)
        return views
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
