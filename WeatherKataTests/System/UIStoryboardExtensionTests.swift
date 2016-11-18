//
//  UIStoryboardExtensionTests.swift
//  WeatherKata
//
//  Created by Ana Nogal on 18/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import XCTest
@testable import WeatherKata

class UIStoryboardExtensionTests: XCTestCase {
    func test_shouldCreateTheMainStoryboard() {
        let storyboard = UIStoryboard().main()
        
        XCTAssertNotNil(storyboard)
    }

    func test_shouldCreateAWeatherTableViewController() {
        let controller = UIStoryboard().createWeatherTableViewController()
        
        XCTAssertNotNil(controller)
    }

}
