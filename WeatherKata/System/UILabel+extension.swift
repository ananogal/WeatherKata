//
//  UILabel+extension.swift
//  WeatherKata
//
//  Created by Ana Nogal on 18/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import UIKit

extension UILabel {
    convenience init(labelStyle: LabelStyle) {
        self.init()
        
        self.text = labelStyle.text
        self.font = UIFont.systemFont(ofSize: labelStyle.fontSize)
        self.textColor = labelStyle.color
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
