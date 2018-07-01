//
//  UIColor+Helpers.swift
//  FunctionalTableDataMyDemo
//
//  Created by Paige Sun on 2017-12-19.
//

import UIKit
import SwiftyTables

extension UIColor {
    class func randomColor() -> UIColor {
        let hue = CGFloat(arc4random() % 100) / 100
        let saturation = CGFloat(arc4random() % 100) / 100
        let brightness = CGFloat(arc4random() % 100) / 100
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1.0)
    }
    
    class func generateRandomData() -> [[UIColor]] {
        let numberOfRows = 23
        let numberOfItemsPerRow = 26
        
        return (0..<numberOfRows).map { _ in
            return (0..<numberOfItemsPerRow).map { _ in UIColor.randomColor() }
        }
    }
}
