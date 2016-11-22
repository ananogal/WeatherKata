//
//  WeatherInteractorType.swift
//  WeatherKata
//
//  Created by Ana Nogal on 19/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation

enum WeatherRequest {
    case loadCities
}

protocol WeatherInteractorType {
    var presenter: WeatherPresenterType? {get set}
    
    func setPresenter(_ presenter: WeatherPresenterType)
    func loadCities()
}
