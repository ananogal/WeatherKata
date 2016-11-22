//
//  WeatherPersistenceStoreTests.swift
//  WeatherKata
//
//  Created by Ana Nogal on 20/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import XCTest
@testable import WeatherKata

class WeatherPersistenceStoreTests: XCTestCase {
    
    var store: WeatherPesistenceStoreType!
    var resource: ResourceReaderType!
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_shouldReturnErrorOnErrorWhenLoadingCities() {
        resource = ResourcesReaderErrorMock()
        store = WeatherPesistenceStore(resourceReader: resource)
        let storeExpectation = expectation(description: "PersistanceStoreForCitiesError")
        
        store.getCities() { (results, error) in
            XCTAssertNotNil(error)
            XCTAssertNil(results)
            storeExpectation.fulfill()
        }
        
        waitForExpectations(timeout: 1) { error in
            if let error = error {
                XCTFail("waitForExpectations PersistanceStoreForCitiesError failed: \(error)")
            }
        }
    }

    
    func test_shouldReturnDataOnSuccessWhenGettingCities() {
        resource = ResourcesReaderSuccessMock()
        store = WeatherPesistenceStore(resourceReader: resource)
        let storeExpectation = expectation(description: "PersistanceStoreForCitiesSuccess")
        
        store.getCities() { (results, error) in
            XCTAssertNotNil(results)
            XCTAssertNil(error)
            
            storeExpectation.fulfill()
        }
        
        waitForExpectations(timeout: 1) { error in
            if let error = error {
                XCTFail("waitForExpectations PersistanceStoreForCitiesSuccess failed: \(error)")
            }
        }
    }
}
