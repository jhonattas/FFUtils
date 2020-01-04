//
//  LayoutHelper.swift
//
//  Created by Felipe Figueiredo on 12/6/17.
//

import Foundation
import UIKit

open class LayoutHelper {
    
    open static var height: CGFloat {
        return UIApplication.shared.keyWindow?.frame.height
            ?? UIScreen.main.bounds.height
    }
    
    open static var width: CGFloat {
        return UIApplication.shared.keyWindow?.frame.width ?? UIScreen.main.bounds.width
    }
    
    open static var statusHeight: CGFloat {
        return UIApplication.shared.statusBarFrame.height
    }
        
    open static var navBarHeight: CGFloat {
        return height * 0.13
    }
    
    open static var smallBarHeight: CGFloat {
        return height * 0.07
    }
    
    open static var bottomButtonHeight: CGFloat {
        return height * 0.09
    }
}
