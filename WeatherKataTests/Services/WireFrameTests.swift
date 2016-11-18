//
//  WireFrameTests.swift
//  WeatherKata
//
//  Created by Ana Nogal on 17/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import XCTest
@testable import WeatherKata

class WireFrameTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_shouldShouldCreateAWeatherTableViewControllerFromStoryboard() {
        let wireframe = Wireframe()
        
        let controller = wireframe.createWeatherController()
        
        XCTAssertNotNil(controller)
    }
}
