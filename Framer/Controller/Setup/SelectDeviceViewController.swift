//
//  SelectDeviceViewController.swift
//  Framer
//
//  Created by Dide van Berkel on 20/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class SelectDeviceViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nextButton: GeneralButton!
    
    var devices = [SelectDeviceModel]()
    var pickedDevices = [DeviceType]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nextButton.typeOfButton = .framerBlue
        nextButton.isEnabled = true
        nextButton.setTitle("button_next".localized, for: .normal)
        enableNextButton()
        
        navigationItem.title = "navbar_device".localized
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "SelectDeviceCell", bundle: nil), forCellReuseIdentifier: "SelectDeviceCell")
        tableView.allowsMultipleSelection = true
        tableView.allowsMultipleSelectionDuringEditing = true
        
        devices = SelectDeviceHelper.getDevicesForAppStore()
        
        view.applyGradient(colors: [Colors.hexToUIColor(hex: "#B7F8DB"), Colors.hexToUIColor(hex: "#50A7C2")])
        
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        guard let vc = UIStoryboard.template().instantiateViewController(withIdentifier: "SelectTemplateViewController") as? SelectTemplateViewController else {
            return
        }
        vc.pickedDevices = pickedDevices
        navigationController?.pushViewController(vc, animated: true)
    }

    private func enableNextButton() {
        if pickedDevices.isEmpty {
            nextButton.isEnabled = false
        } else {
            nextButton.isEnabled = true
        }
    }
}

extension SelectDeviceViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return devices.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 128
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SelectDeviceCell", for: indexPath) as? SelectDeviceCell {
            
            let device = devices[indexPath.row]
            cell.setupCell(image: device.image, title: device.title, subtitle: device.subtitle)
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let deviceType = devices[indexPath.row].type
        if !pickedDevices.contains(deviceType) {
            pickedDevices.append(deviceType)
        }
        enableNextButton()
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        let deviceType = devices[indexPath.row].type
        if pickedDevices.contains(deviceType) {
            if let itemToRemoveIndex = pickedDevices.index(of: deviceType) {
                pickedDevices.remove(at: itemToRemoveIndex)
            }
        }
        enableNextButton()
    }

}
