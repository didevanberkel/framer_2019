//
//  GeneralButton.swift
//  Framer
//
//  Created by Dide van Berkel on 25/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class GeneralButton: UIButton {
    
    var typeOfButton : TypeOfButton = .framerBlue
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        switch typeOfButton {
        case .framerBlue:
            titleLabel?.font = Font.futuraMedium(size: 16)
            setTitleColor(UIColor.white.withAlphaComponent(1.0), for: .normal)
            layer.backgroundColor = Colors.framerDarkBlue.withAlphaComponent(0.8).cgColor
        case .framerPantone:
            titleLabel?.font = Font.futuraMedium(size: 16)
            setTitleColor(UIColor.white.withAlphaComponent(1.0), for: .normal)
            layer.backgroundColor = Colors.framerDarkPantone.withAlphaComponent(0.8).cgColor
        }
    }
    
    override var isEnabled: Bool {
        didSet {
            switch typeOfButton {
            case .framerBlue:
                if isEnabled {
                    setTitleColor(UIColor.white.withAlphaComponent(1.0), for: .normal)
                    layer.backgroundColor = Colors.framerDarkBlue.withAlphaComponent(0.8).cgColor
                } else {
                    setTitleColor(UIColor.white.withAlphaComponent(0.5), for: .normal)
                    layer.backgroundColor = Colors.framerDarkBlue.withAlphaComponent(0.3).cgColor
                }
            case .framerPantone:
                if isEnabled {
                    setTitleColor(UIColor.white.withAlphaComponent(1.0), for: .normal)
                    layer.backgroundColor = Colors.framerDarkPantone.withAlphaComponent(0.8).cgColor
                } else {
                    setTitleColor(UIColor.white.withAlphaComponent(0.5), for: .normal)
                    layer.backgroundColor = Colors.framerDarkPantone.withAlphaComponent(0.3).cgColor
                }
            }
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            switch typeOfButton {
            case .framerBlue:
                if isHighlighted {
                    setTitleColor(UIColor.white.withAlphaComponent(1.0), for: .normal)
                    layer.backgroundColor = Colors.framerDarkBlue.withAlphaComponent(0.5).cgColor
                } else {
                    setTitleColor(UIColor.white.withAlphaComponent(1.0), for: .normal)
                    layer.backgroundColor = Colors.framerDarkBlue.withAlphaComponent(0.8).cgColor
                }
                break
            case .framerPantone:
                if isHighlighted {
                    setTitleColor(UIColor.white.withAlphaComponent(1.0), for: .normal)
                    layer.backgroundColor = Colors.framerDarkPantone.withAlphaComponent(0.5).cgColor
                } else {
                    setTitleColor(UIColor.white.withAlphaComponent(1.0), for: .normal)
                    layer.backgroundColor = Colors.framerDarkPantone.withAlphaComponent(0.8).cgColor
                }
                break
            }
        }
    }
    
}

