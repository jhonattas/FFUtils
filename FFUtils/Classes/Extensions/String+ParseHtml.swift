//
//  String+ParseHtml.swift
//
//  Created by Felipe Figueiredo on 10/27/17.
//

import Foundation
import UIKit

extension String {
    
    public var html2AttributedString: NSAttributedString? {
        do {
            let newString = "<span style=\"font-family: -apple-system; font-size: 14\">\(self)</span>"
            guard let stringData = newString.data(using: String.Encoding.isoLatin1) else {
                return nil
            }
            return try NSAttributedString(
                data: stringData,
                options:
                [NSAttributedString.DocumentReadingOptionKey.documentType:
                    NSAttributedString.DocumentType.html],
                documentAttributes: nil
            )
        } catch {
            print("error:", error)
            return  nil
        }
    }
    
    public var html2String: String {
        let string = html2AttributedString?.string ?? ""
        return string
    }
}
