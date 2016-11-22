//
//  CityParserTests.swift
//  WeatherKata
//
//  Created by Ana Nogal on 21/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import XCTest
@testable import WeatherKata

class CityParserTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_shouldParseDataOfOneCitytoCity() {
        let data = FakeData.serialize(JSON: FakeData.createCityJSON() as AnyObject)
        let expectedCity = FakeData.createCity()
        let parser = CityParser()
        
        let cities = parser.parse(data: data!)
        
        XCTAssertEqual(expectedCity, cities?.first!)
    }
    
    func test_shouldParseDataOfMoreThanOneCity() {
        let data = FakeData.serialize(JSON: FakeData.createTwoCitiesJSON() as AnyObject)
        let parser = CityParser()
        
        let cities = parser.parse(data: data!)
        
        XCTAssertEqual(cities?.count, 2)
    }
    
}
