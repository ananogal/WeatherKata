//
//  WeatherGatewayType.swift
//  WeatherKata
//
//  Created by Ana Nogal on 20/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation

typealias CitiesResult = (_ cities: [City]?, _ error: Error?) -> Void
typealias WeatherResult = (_ weather: WeatherEntity, _ error:Error?) -> Void

protocol WeatherGatewayType {
    var persistenceStore: WeatherPesistenceStoreType! {get}
    
    func getCities(completion: CitiesResult)
    func getWeatherFor(city: City, completion: WeatherResult)
}
