//
//  UIImageView+Parallax.swift
//
//  Created by Felipe Figueiredo on 4/18/18.
//

import Foundation
import UIKit

extension UIImageView {
    
    func addParallaxEffect() {
        let offset = UIScreen.main.bounds.width * 0.07
        let min = CGFloat(-offset)
        let max = CGFloat(offset)
        let scaleY = (2 * offset + self.frame.height)/self.frame.height
        let scaleX = (2 * offset + self.frame.width)/self.frame.width
        self.transform = CGAffineTransform(scaleX: scaleX, y: scaleY)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x",
                                                  type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y",
                                                  type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        self.addMotionEffect(motionEffectGroup)
    }
}
