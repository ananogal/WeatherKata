//
//  WireFrameTests.swift
//  WeatherKata
//
//  Created by Ana Nogal on 17/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import XCTest
@testable import WeatherKata

class WireframeTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_shouldPrepareViewSettingWeatherEventHandler() {
        let wireframe = Wireframe()
        let view = WeatherViewTypeSpy()
        
        wireframe.prepare(view: view)
        
        XCTAssertTrue(view.setEventHandlerCalled)
    }

}
