//
//  UIColor+RGBinit.swift
//
//  Created by Felipe Figueiredo on 10/27/17.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat) {
        self.init(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1)
    }
}
