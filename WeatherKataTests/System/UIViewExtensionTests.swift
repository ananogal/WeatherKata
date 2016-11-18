//
//  UIViewExtensionTests.swift
//  WeatherKata
//
//  Created by Ana Nogal on 18/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import XCTest
@testable import WeatherKata

class UIViewExtensionTests: XCTestCase {
    var view: UIView!
    
    func test_shouldCreateAUIViewWithWidthAndHeight() {
        createHeaderView()
        
        XCTAssertEqual(view.frame.width, 10.0, "Width of view should be 10")
        XCTAssertEqual(view.frame.height, 20.0, "Height of view should be 20" )
    }

    func test_shouldAddABackgroundColorToHeaderView() {
        createHeaderView()
        
        XCTAssertEqual(view.backgroundColor, UIColor.darkBlue)
    }
    
    func test_shouldAddALabelWithATitleToHeaderView() {
        createHeaderView()
        
        XCTAssertEqual(view.subviews.count, 1)
    }
    
    func test_shouldCreateConstraintsWithLabelToHeaderView() {
        createHeaderView()
        
        XCTAssertEqual(view.constraints.count, 2)
    }
    
    func createHeaderView() {
        let style = HeaderViewStyle(width: 10.0, height: 20.0)
        let label = UILabel()
        view = UIView(viewStyle: style, label: label)
    }
}
