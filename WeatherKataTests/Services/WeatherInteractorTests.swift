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
    var gateway: WeatherGatewayType!
    
    override func setUp() {
        super.setUp()
        gateway = Wireframe().createGateway()
        interactor = WeatherInteractor(gateway: gateway)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_shouldConformToWeatherEventHandlerTypeProtocol() {
        XCTAssertNotNil(interactor as WeatherEventHandlerType)
    }
    
    func test_shouldCallLoadCitiesInGateway() {
        let gateway = WeatherGatewaySpy()
        interactor = WeatherInteractor(gateway: gateway)
        
        interactor.loadCities()
        
        XCTAssertTrue(gateway.getCitiesCalled)
    }
    
    func test_shouldCallGetWeatherForCityOnSuccess() {
        let gatewaySpy = WeatherGatewaySpy()
        gatewaySpy.cities = [FakeData.createCity()]
        gatewaySpy.shouldSucceedGetingCities = true
        
        interactor = WeatherInteractor(gateway: gatewaySpy)
        
        interactor.loadCities()
        
        XCTAssertTrue(gatewaySpy.getWeatherForCityCalled)
    }
    
    
    func test_shouldIterateThroughCitiesOnSuccess() {
        let gatewaySpy = WeatherGatewaySpy()
        gatewaySpy.cities = [FakeData.createCity(), FakeData.createCity()]
        gatewaySpy.shouldSucceedGetingCities = true
        
        interactor = WeatherInteractor(gateway: gatewaySpy)
        
        interactor.loadCities()
        
        XCTAssertEqual(gatewaySpy.countForGetWeatherForCity, 2)
    }
}
