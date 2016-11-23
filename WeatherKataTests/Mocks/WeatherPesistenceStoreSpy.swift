//
//  WeatherPesistenceStoreSpy.swift
//  WeatherKata
//
//  Created by Ana Nogal on 20/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation
@testable import WeatherKata

class WeatherPesistenceStoreSpy : WeatherPesistenceStoreType {
    let resourceReader: ResourceReaderType! = nil
    var getCitiesCalled = false
    var shouldSucceedLoadingCities = false
    var cityData: Data? = Data()
    var error: Error?
    
    func getCities(completion: DataResult) {
        getCitiesCalled = true
        
        guard let data = cityData, shouldSucceedLoadingCities else {
            return completion(nil, error)
        }
        
        completion(data, nil)
    }
}
