//
//  WeatherInteractor.swift
//  WeatherKata
//
//  Created by Ana Nogal on 19/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation

class WeatherInteractor: WeatherInteractorType {
    var presenter: WeatherPresenterType?
    var gateway: WeatherGatewayType!
    
    init(gateway: WeatherGatewayType) {
        self.gateway = gateway
    }
    
    func setPresenter(_ presenter: WeatherPresenterType) {
        self.presenter = presenter
    }
    
    func loadCities() {
        gateway.getCities { (cities, error) in
            if let cities = cities {
                iterateCities(cities)
            }
        }
    }
    
    func iterateCities(_ cities: [City]) {
        for city in cities {
            gateway.getWeatherFor(city: city){ (result, error) in
                
            }
        }
    }
}

extension WeatherInteractor : WeatherEventHandlerType {
    func loadCitiesWeather() {
        loadCities()
    }
}
