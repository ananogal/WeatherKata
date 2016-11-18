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
    
    override func setUp() {
        super.setUp()
        view = UIView()
    }

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
    
    func test_shouldCreateAFooterViewWithTheGivenWidthAndHeight() {
        createFooterView()
        
        XCTAssertEqual(view.frame.width, 20.0)
        XCTAssertEqual(view.frame.height, 20.0)
    }
    
    func test_shouldAddABackgroundColorToFooterView() {
        createFooterView()
        XCTAssertEqual(view.backgroundColor, UIColor.white)
    }
    
    
    func test_shouldAddALabelWithATitleToFooterView() {
        createFooterView()
        XCTAssertEqual(view.subviews.count, 1)
    }
    
    func test_shouldCreateConstraintsWithLabelToFooterView() {
        createFooterView()
        XCTAssertEqual(view.constraints.count, 2)
    }
    
    func createHeaderView() {
        let style = ViewSize(width: 10.0, height: 20.0)
        let label = UILabel()
        view = UIView(viewSize: style, label: label, backgroundColor: ViewStyle.headerBkgColor)
    }
    
    func createFooterView() {
        view = UIView(viewSize: ViewSize(width: 20.0, height: 20.0), label: UILabel(), backgroundColor: ViewStyle.footerBkgColor)
    }
}
