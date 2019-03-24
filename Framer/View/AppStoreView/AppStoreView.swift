//
//  AppStoreView.swift
//  Framer
//
//  Created by Dide van Berkel on 08/02/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class AppStoreView: UIView {
    
    @IBOutlet weak var deviceView: UIView!
    @IBOutlet weak var topTextView: TopTextView!
    @IBOutlet weak var bottomTextView: BottomTextView!
    //@IBOutlet weak var deviceAspectRatioiPhone55: NSLayoutConstraint!
    
    override func awakeFromNib() {
        topTextView.isHidden = true
        bottomTextView.isHidden = true
    }
    
    func setupBackgroundColors(colors: [UIColor]) {
        self.applyGradient(colors: colors)
    }
    
    func showTextAreas(hideTopText: Bool, hideBottomText: Bool) {
        
        topTextView.isHidden = hideTopText
        bottomTextView.isHidden = hideBottomText
    }
    
}
