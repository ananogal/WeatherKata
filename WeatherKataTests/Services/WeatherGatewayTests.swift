//
//  WeatherGatewayTests.swift
//  WeatherKata
//
//  Created by Ana Nogal on 20/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import XCTest
@testable import WeatherKata

class WeatherGatewayTests: XCTestCase {
    
    var store: WeatherPesistenceStoreSpy!
    var gateway: WeatherGatewayType!
    var cityParser: CityParserType!
    
    override func setUp() {
        super.setUp()
        store = WeatherPesistenceStoreSpy()
        cityParser = CityParser()
        gateway = WeatherGateway(store: store, cityParser: cityParser)
    }
    
    override func tearDown() {
         super.tearDown()
    }

    func test_shouldCallGetCities() {
        gateway.getCities{ (_, _ ) in
        
        }
        
        XCTAssertTrue(store.getCitiesCalled)
    }

    func test_shouldCallParseOnSuccess() {
        let cityParser = CityParserSpy()
        gateway = WeatherGateway(store: store, cityParser: cityParser)
        
        store.cityData = FakeData.serialize(JSON: FakeData.createCityJSON() as AnyObject)
        store.shouldSuccedLoadingCities = true
        cityParser.cities = [FakeData.createCity()]
        
        let gatewayExpectation = expectation(description: "GatewayCallParseOnSuccess")
        gateway.getCities{ (_, _) in
            XCTAssertTrue(cityParser.parseCalled)
            
            gatewayExpectation.fulfill()
        }
     
        waitForExpectations(timeout: 1) { error in
            if let error = error {
                XCTFail("waitForExpectations GatewayCallParseOnSuccess failed: \(error)")
            }
        }
    }
}
