//
//  RoundView.swift
//  Buddfy
//
//  Created by Felipe Figueiredo on 12/13/17.
//  Copyright © 2017 Felipe Figueiredo. All rights reserved.
//

import Foundation

import UIKit

class RoundView: UIView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height/2
        layer.masksToBounds = true
    }
    
}
