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
    var wireframe: Wireframe!
    var view: WeatherViewTypeSpy!

    override func setUp() {
        super.setUp()
        wireframe = Wireframe()
        view = WeatherViewTypeSpy()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_shouldPrepareViewSettingWeatherEventHandler() {
        let interactor = WeatherInteractorSpy()
        wireframe.prepare(view: view, interactor: interactor)
        
        XCTAssertTrue(view.setEventHandlerCalled)
    }
    
    func test_shouldPrepareViewWithInteractor() {
        let interactor = WeatherInteractorSpy()
        
        wireframe.prepare(view: view, interactor: interactor)
        
        XCTAssertNotNil(view.weatherEventHandler)
    }

    func test_shouldSetPresenterOnInteractor() {
        let controller = WeatherTableViewController()
        let gateway = wireframe.createGateway()
        let interactor = WeatherInteractor(gateway: gateway)
        
        wireframe.prepare(view: controller, interactor: interactor)
        
        XCTAssertNotNil(interactor.presenter)
    }

    func test_shouldCreateAnInteractorWithAGateway() {
        let interactor = wireframe.createInteractor()
        
        XCTAssertNotNil(interactor)
        XCTAssertNotNil(interactor.gateway)
    }
    
    func test_shouldCreateGatewayWithAStore() {
        let gateway = wireframe.createGateway()
        
        XCTAssertNotNil(gateway)
        XCTAssertNotNil(gateway.persistenceStore)
    }
    
    func test_shouldCreateAStoreWithAResourceReader() {
        let store = wireframe.createPersistenceStore()
        
        XCTAssertNotNil(store)
        XCTAssertNotNil(store.resourceReader)
    }
}
