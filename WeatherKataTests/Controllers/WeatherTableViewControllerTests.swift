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
    var interactor: WeatherInteractorType!
    
    override func setUp() {
        super.setUp()
        controller = UIStoryboard().createWeatherTableViewController()
        let gateway = WeatherGateway()
        interactor = WeatherInteractor(gateway: gateway)
        
        Wireframe().prepare(view: controller, interactor: interactor)
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
    
    func test_shouldConformToWeatherViewProtocol() {
        XCTAssertNotNil(controller as WeatherViewType)
    }

    func test_shouldSetEventHandler() {
        XCTAssertNotNil(controller.weatherEventHandler)
    }

    func test_shouldCallLoadCitiesWeatherInEventHandler() {
        let eventHandler = EventHandlerSpy()
        controller.weatherEventHandler = eventHandler
        
        controller.loadViewIfNeeded()
        
        XCTAssertTrue(eventHandler.loadCitiesWeatherCalled)
    }
}
