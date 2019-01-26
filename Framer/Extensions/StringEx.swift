//
//  StringEx.swift
//  Framer
//
//  Created by Dide van Berkel on 25/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
