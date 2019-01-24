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
    
    var devices = [Device]()
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "SelectDeviceCell", bundle: nil), forCellReuseIdentifier: "SelectDeviceCell")
        
        devices = SelectDeviceHelper.getDevicesForAppStore()
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
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        guard let vc = UIStoryboard.home().instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController else {
            return
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}
