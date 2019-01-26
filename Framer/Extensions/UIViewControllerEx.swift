//
//  UIViewControllerEx.swift
//  Framer
//
//  Created by Dide van Berkel on 25/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    static var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    static var window = UIApplication.shared.keyWindow!
    static var visualView : UIVisualEffectView?
    
    func presentAlert(message: String, title: String = "") {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OkAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(OkAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func showLoadingIndicatorScreen() {
        UIViewController.activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        UIViewController.activityIndicator.hidesWhenStopped = true
        UIViewController.activityIndicator.style = .whiteLarge
        UIViewController.window.addSubview(UIViewController.activityIndicator)
        
        UIViewController.activityIndicator.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        UIViewController.activityIndicator.widthAnchor.constraint(equalToConstant: 40.0).isActive = true
        UIViewController.activityIndicator.centerXAnchor.constraint(equalTo: UIViewController.window.centerXAnchor).isActive = true
        UIViewController.activityIndicator.centerYAnchor.constraint(equalTo: UIViewController.window.centerYAnchor).isActive = true
        
        let darkBlur = UIBlurEffect(style: .light)
        UIViewController.visualView = UIVisualEffectView(effect: darkBlur)
        UIViewController.visualView?.translatesAutoresizingMaskIntoConstraints = false
        UIViewController.visualView!.alpha = 0.6
        UIViewController.visualView!.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        UIViewController.window.addSubview(UIViewController.visualView!)
        UIViewController.window.bringSubviewToFront(UIViewController.activityIndicator)
        
        UIViewController.visualView?.leadingAnchor.constraint(equalTo: UIViewController.window.leadingAnchor).isActive = true
        UIViewController.visualView?.trailingAnchor.constraint(equalTo: UIViewController.window.trailingAnchor).isActive = true
        UIViewController.visualView?.bottomAnchor.constraint(equalTo: UIViewController.window.bottomAnchor).isActive = true
        UIViewController.visualView?.topAnchor.constraint(equalTo: UIViewController.window.topAnchor).isActive = true
        
        UIViewController.activityIndicator.startAnimating()
    }
    
    func removeLoadingIndicatorScreen() {
        if UIViewController.visualView != nil {
            UIViewController.visualView?.removeFromSuperview()
            UIViewController.visualView = nil
        }
        if UIViewController.activityIndicator.isDescendant(of: UIViewController.window) {
            UIViewController.activityIndicator.stopAnimating()
            UIViewController.activityIndicator.removeFromSuperview()
        }
        
    }
    
}

