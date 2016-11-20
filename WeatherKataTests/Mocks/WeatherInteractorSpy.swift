//
//  WeatherInteractorSpy.swift
//  WeatherKata
//
//  Created by Ana Nogal on 19/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation
@testable import WeatherKata

class WeatherInteractorSpy : WeatherInteractorType, WeatherEventHandlerType {
    var presenter: WeatherPresenterType?
    
    func setPresenter(_ presenter: WeatherPresenterType) {
       
    }
    
    func loadCities() {
        
    }
    
    func loadCitiesWeather() {
    
    }
}
