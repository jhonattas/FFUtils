//
//  UIImage+Grayscale.swift
//
//  Created by Felipe Figueiredo on 10/27/17.
//

import Foundation
import UIKit

extension UIImage {
    func grayscale() -> UIImage {
        let currentFilter = CIFilter(name: "CIPhotoEffectNoir")
        currentFilter!.setValue(CIImage(image: self), forKey: kCIInputImageKey)
        let output = currentFilter!.outputImage
        let context = CIContext(options: nil)
        let cgimg = context.createCGImage(output!, from: output!.extent)
        let processedImage = UIImage(cgImage: cgimg!)
        return processedImage
    }
}
