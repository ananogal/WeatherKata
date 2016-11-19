//
//  EventHandlerSpy.swift
//  WeatherKata
//
//  Created by Ana Nogal on 19/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation
@testable import WeatherKata

class EventHandlerSpy: WeatherEventHandlerType {
    var loadCitiesWeatherCalled = false
    
    func loadCitiesWeather() {
        loadCitiesWeatherCalled = true
    }
}
