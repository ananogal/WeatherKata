//
//  UILabel+extension.swift
//  WeatherKata
//
//  Created by Ana Nogal on 18/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import UIKit

extension UILabel {
    convenience init(text: String, color: UIColor, fontSize: CGFloat) {
        self.init()
        
        self.text = text
        self.font = UIFont.systemFont(ofSize: fontSize)
        self.textColor = color
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
