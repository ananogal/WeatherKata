//
//  WeatherInteractorTests.swift
//  WeatherKata
//
//  Created by Ana Nogal on 19/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//
import XCTest
@testable import WeatherKata

class WeatherInteractorTests: XCTestCase {
    var interactor: WeatherInteractor!
    override func setUp() {
        super.setUp()
        interactor = WeatherInteractor()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_shouldConformToWeatherEventHandlerTypeProtocol() {
        XCTAssertNotNil(interactor as WeatherEventHandlerType)
    }
}
