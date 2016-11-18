//
//  WeatherTableViewControllerTests.swift
//  WeatherKata
//
//  Created by Ana Nogal on 18/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import XCTest
@testable import WeatherKata

class WeatherTableViewControllerTests: XCTestCase {
    
    var controller: WeatherTableViewController!
    
    override func setUp() {
        super.setUp()
        controller = Wireframe().createWeatherController()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_shouldConformToUIGestureRecognizerDelegateProtocol() {
        XCTAssertNotNil(controller as UIGestureRecognizerDelegate)
    }

    func test_shouldAddGestureRecognizerToLabel() {
        let label = UILabel()
        
        controller.addGestureRecognizerTo(label: label)
        
        XCTAssertEqual(label.gestureRecognizers?.count, 1)
    }

}
