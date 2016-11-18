//
//  UIView+HeaderFooterView.swift
//  WeatherKata
//
//  Created by Ana Nogal on 18/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import UIKit

struct ViewStyle {
    static let headerBkgColor = UIColor.darkBlue
    static let footerBkgColor = UIColor.white
}

struct ViewSize {
    let width: CGFloat
    let height: CGFloat
}

extension UIView {

    convenience init(viewSize: ViewSize, label: UILabel, backgroundColor: UIColor) {
        self.init(frame: CGRect(x: 0.0, y: 0.0, width: viewSize.width, height: viewSize.height))
    
        self.backgroundColor = backgroundColor
        self.addSubview(label)
        self.addConstraintsTo(label: label)
    }
    
    fileprivate func addConstraintsTo(label: UILabel) {
        let horizontalConstraint = label.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        let verticalConstraint = label.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        NSLayoutConstraint.activate([horizontalConstraint, verticalConstraint])
    }
}

