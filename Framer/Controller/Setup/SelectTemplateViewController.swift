//
//  SelectTemplateViewController.swift
//  Framer
//
//  Created by Dide van Berkel on 20/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class SelectTemplateViewController: UIViewController {
    
    var templates = [SelectTemplateModel]()
    var pickedDevices = [DeviceType]()
    var pickedTemplates = [TemplateType]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextButton: GeneralButton!
    
    private let sectionInsets = UIEdgeInsets(top: 16.0, left: 16.0, bottom: 16.0, right: 16.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        templates = SelectTemplateHelper.getTemplatesForAppStore()
        nextButton.typeOfButton = .framerBlue
        nextButton.isEnabled = true
        nextButton.setTitle("button_next".localized, for: .normal)
        enableNextButton()
        
        let backButton = Buttons.setBackButton()
        backButton.addTarget(self, action: #selector(backButtonPressed), for: UIControl.Event.touchUpInside)
        let backBarButton = Buttons.setBackBarButton(button: backButton)
        navigationItem.leftBarButtonItem = backBarButton
        navigationItem.title = "navbar_template".localized
        
        view.applyGradient(colors: [Colors.hexToUIColor(hex: "#de6262"), Colors.hexToUIColor(hex: "#ffb88c")])
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "SelectTemplateCell", bundle: nil), forCellWithReuseIdentifier: "SelectTemplateCell")
        collectionView.allowsMultipleSelection = true
    }
    
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        guard let vc = UIStoryboard.home().instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController else {
            return
        }
        vc.pickedTemplates = pickedTemplates
        vc.pickedDevices = pickedDevices
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func enableNextButton() {
        if pickedTemplates.isEmpty {
            nextButton.isEnabled = false
        } else {
            nextButton.isEnabled = true
        }
    }
}

extension SelectTemplateViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return templates.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let itemsPerRow: CGFloat = 3.0
        let paddingSpace: CGFloat = sectionInsets.left * (itemsPerRow + 1.0)
        let availableWidth = collectionView.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SelectTemplateCell", for: indexPath) as? SelectTemplateCell {
            
            let template = templates[indexPath.row]
            cell.setupCell(image: template.image, title: template.title)
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let templateType = templates[indexPath.row].type
        if !pickedTemplates.contains(templateType) {
            pickedTemplates.append(templateType)
        }
        enableNextButton()
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let templateType = templates[indexPath.row].type
        if pickedTemplates.contains(templateType) {
            if let itemToRemoveIndex = pickedTemplates.index(of: templateType) {
                pickedTemplates.remove(at: itemToRemoveIndex)
            }
        }
        enableNextButton()
    }
    
}

