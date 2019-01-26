//
//  SelectImageViewController.swift
//  Framer
//
//  Created by Dide van Berkel on 20/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class SelectImageViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var vcTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        vcTitle.setVCTitle(title: "navbar_image".localized)
        
        view.applyGradient(colors: [Colors.hexToUIColor(hex: "#de6262"), Colors.hexToUIColor(hex: "#ffb88c")])
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }

}
