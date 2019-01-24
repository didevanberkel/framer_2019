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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.delegate = self
        navigationItem.title = "Home"
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
            navigationController?.pushViewController(vc, animated: true)
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
