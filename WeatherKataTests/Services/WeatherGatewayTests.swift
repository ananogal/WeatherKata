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
        store.shouldSucceedLoadingCities = true
        cityParser.cities = [FakeData.createCity()]
        
        gateway.getCities{(results, error) in
            
        }
        
        XCTAssertTrue(cityParser.parseCalled)
    }
}
