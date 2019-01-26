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
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    var deviceViews = [UIView]()
    
    var pickedDevices = [DeviceType]()
    var pickedTemplates = [TemplateType]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
        scrollView.isPagingEnabled = true
        tabBar.delegate = self
        
        deviceViews = createDeviceViews()
        setupDeviceScrollView(deviceViews: deviceViews)
        
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
    
    private func setupDeviceScrollView(deviceViews: [UIView]) {
        
        for sub in scrollView.subviews {
            sub.removeFromSuperview()
        }
        
        scrollView.contentSize.width = scrollParent.frame.width * CGFloat(deviceViews.count)
        
        for i in 0 ..< deviceViews.count {
            deviceViews[i].frame = CGRect(x: scrollParent.frame.width * CGFloat(i), y: 0, width: scrollParent.frame.width, height: scrollParent.frame.height)
            scrollView.addSubview(deviceViews[i])
        }
    }
    
    private func createDeviceViews() -> [UIView] {
        var views = [UIView]()
        

        return views
    }

}

extension HomeViewController: UITabBarDelegate {
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 1:
            guard let vc = UIStoryboard.template().instantiateViewController(withIdentifier: "SelectTemplateViewController") as? SelectTemplateViewController else {
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
