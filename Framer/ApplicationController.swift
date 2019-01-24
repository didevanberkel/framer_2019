
//
//  ApplicationController.swift
//  Framer
//
//  Created by Dide van Berkel on 24/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

class ApplicationController {
    
    static let shared = ApplicationController()
    
    func setupNavBar() {
        let navigationBarAppearance = UINavigationBar.appearance(whenContainedInInstancesOf: [UINavigationController.self])
        navigationBarAppearance.barTintColor = UIColor.white
        navigationBarAppearance.setBackgroundImage(UIImage(), for: .default)
        navigationBarAppearance.shadowImage = UIImage()
        navigationBarAppearance.isTranslucent = false
        navigationBarAppearance.frame = CGRect(x: 0, y: 0, width: navigationBarAppearance.bounds.width, height: 80)
        navigationBarAppearance.backItem?.backBarButtonItem?.tintColor = UIColor.blue
        navigationBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue,  NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24.0)]
    }
    
    
    
}
