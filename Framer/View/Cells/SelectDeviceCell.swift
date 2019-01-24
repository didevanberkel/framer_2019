//
//  SelectDeviceCell.swift
//  Framer
//
//  Created by Dide van Berkel on 23/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class SelectDeviceCell: UITableViewCell {

    @IBOutlet weak var selectDeviceImage: UIImageView!
    @IBOutlet weak var selectDeviceTitle: UILabel!
    @IBOutlet weak var selectDeviceSubtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(image: UIImage, title: String, subtitle: String) {
        
        selectDeviceImage.image = image
        selectDeviceTitle.text = title
        selectDeviceSubtitle.text = subtitle
    }
    
}
