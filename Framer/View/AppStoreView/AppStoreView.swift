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
    
    @IBOutlet weak var topTextViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomTextViewHeightConstraint: NSLayoutConstraint!
    
    func setupBackgroundColors(colors: [UIColor]) {
        self.applyGradient(colors: colors)
    }
    
    func showTextAreas(hideTopText: Bool, hideBottomText: Bool) {
        
        if hideTopText {
            topTextViewHeightConstraint.constant = 0
        } else {
            topTextViewHeightConstraint.constant = 80
        }
        if hideBottomText {
            bottomTextViewHeightConstraint.constant = 0
        } else {
            bottomTextViewHeightConstraint.constant = 80
        }
//        topTextView.isHidden = hideTopText
//        bottomTextView.isHidden = hideBottomText
    }
    
}
