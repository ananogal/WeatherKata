//
//  UIView+HeaderFooterView.swift
//  WeatherKata
//
//  Created by Ana Nogal on 18/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import UIKit

struct HeaderViewStyle {
    static let backgroundColor = UIColor.darkBlue
    let width: CGFloat
    let height: CGFloat
}

extension UIView {

    convenience init(viewStyle: HeaderViewStyle, label: UILabel) {
        self.init(frame: CGRect(x: 0.0, y: 0.0, width: viewStyle.width, height: viewStyle.height))
    
        self.backgroundColor = HeaderViewStyle.backgroundColor
        self.addSubview(label)
        self.addConstraintsTo(label: label)
    }
    
    fileprivate func addConstraintsTo(label: UILabel) {
        let horizontalConstraint = label.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        let verticalConstraint = label.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        NSLayoutConstraint.activate([horizontalConstraint, verticalConstraint])
    }
}

