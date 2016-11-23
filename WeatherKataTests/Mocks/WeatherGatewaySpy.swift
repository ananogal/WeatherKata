//
//  WeatherGatewaySpy.swift
//  WeatherKata
//
//  Created by Ana Nogal on 20/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation
@testable import WeatherKata

class WeatherGatewaySpy: WeatherGatewayType {
    var persistenceStore: WeatherPesistenceStoreType!
    
    var getCitiesCalled = false
    var getWeatherForCityCalled = false
    
    var shouldSucceedGetingCities = false
    var cities: [City]? = nil
    var countForGetWeatherForCity = 0
    
    func getCities(completion: CitiesResult) {
        getCitiesCalled = true
        
        if let results = cities, shouldSucceedGetingCities {
            completion(results, nil)
        }
        
        completion(nil, WeatherError.parseCities)
    }
    
    func getWeatherFor(city: City, completion: WeatherResult) {
        getWeatherForCityCalled = true
        countForGetWeatherForCity += 1
    }
}
