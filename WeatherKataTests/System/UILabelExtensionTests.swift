//
//  UILabelExtensionTests.swift
//  WeatherKata
//
//  Created by Ana Nogal on 18/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import XCTest
@testable import WeatherKata

class UILabelExtensionTests: XCTestCase {
    
    struct LabelStyleTests: LabelStyle {
        let text = "Hello"
        let fontSize: CGFloat = 20.0
        let color = UIColor.blue
    }
    
    func test_shouldCreateALabelWithTextColorAndFontSize() {

        let titleLabel = UILabel(labelStyle: LabelStyleTests())
        
        XCTAssertEqual(titleLabel.text, "Hello")
        XCTAssertEqual(titleLabel.textColor, UIColor.blue)
        XCTAssertEqual(titleLabel.font.pointSize, 20.0)
    }
    
    func test_shouldHavetranslatesAutoresizingMaskIntoConstraintsSetToFalse() {
        let titleLabel = UILabel(labelStyle: LabelStyleTests())
        
        XCTAssertFalse(titleLabel.translatesAutoresizingMaskIntoConstraints)
    }
}
