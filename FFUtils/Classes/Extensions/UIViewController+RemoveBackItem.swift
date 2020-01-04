//
//  UIViewController+RemoveBackItem.swift
//
//  Created by Felipe Figueiredo on 10/27/17.
//

import Foundation
import UIKit

extension UIViewController {
    func removeBackItemTitle() {
        let backItem = UIBarButtonItem()
        backItem.title = ""
        self.navigationItem.backBarButtonItem = backItem
    }
}
