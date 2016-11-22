//
//  WeatherGateway.swift
//  WeatherKata
//
//  Created by Ana Nogal on 20/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation

class WeatherGateway: WeatherGatewayType {
    let persistenceStore: WeatherPesistenceStoreType!
    let cityParser: CityParserType!
    
    init(store: WeatherPesistenceStoreType, cityParser: CityParserType) {
        self.persistenceStore = store
        self.cityParser = cityParser
    }
    
    func getCities(completion: CitiesResult) {
        persistenceStore.getCities { (data, error) in
            guard let data = data else {
                return completion( nil, error)
            }
            
            if let cities = cityParser.parse(data: data) {
                completion(cities, nil)
            } else {
                completion(nil, WeatherError.parseCities)
            }
        }
    }
}
