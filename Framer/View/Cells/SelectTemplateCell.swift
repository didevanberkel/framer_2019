//
//  SelectTemplateCell.swift
//  Framer
//
//  Created by Dide van Berkel on 26/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class SelectTemplateCell: UICollectionViewCell {

    @IBOutlet weak var selectTemplateImage: UIImageView!
    @IBOutlet weak var selectTemplateTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectTemplateTitle.font = Font.futuraMedium(size: 12.0)
        layer.cornerRadius = 3.0
    }
    
    func setupCell(image: UIImage, title: String) {
        
        selectTemplateImage.image = image
        selectTemplateTitle.text = title
    }
    
    override var isSelected: Bool {
        didSet {
            self.contentView.backgroundColor = isSelected ? Colors.framerDarkPantone : UIColor.white
        }
    }
}
