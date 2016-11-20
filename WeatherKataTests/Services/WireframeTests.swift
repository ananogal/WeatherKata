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
        let interactor = WeatherInteractorSpy()
        
        wireframe.prepare(view: view, interactor: interactor)
        
        XCTAssertTrue(view.setEventHandlerCalled)
    }
    
    func test_shouldPrepareViewWithInteractor() {
        let wireframe = Wireframe()
        let view = WeatherViewTypeSpy()
        let interactor = WeatherInteractorSpy()
        
        wireframe.prepare(view: view, interactor: interactor)
        
        XCTAssertNotNil(view.weatherEventHandler)
    }

    func test_shouldSetPresenterOnInteractor() {
        let controller = WeatherTableViewController()
        let gateway = WeatherGateway()
        let interactor = WeatherInteractor(gateway: gateway)
        
        Wireframe().prepare(view: controller, interactor: interactor)
        
        XCTAssertNotNil(interactor.presenter)
    }

    func test_shouldCreateAnInteractor() {
        let interactor = Wireframe().createInteractor()
        
        XCTAssertNotNil(interactor)
        XCTAssertNotNil(interactor.gateway)
    }

}
