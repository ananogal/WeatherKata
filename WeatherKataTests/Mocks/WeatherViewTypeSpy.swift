//
//  WeatherViewTypeSpy.swift
//  WeatherKata
//
//  Created by Ana Nogal on 19/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation
@testable import WeatherKata

class WeatherViewTypeSpy : WeatherViewType {
    var weatherEventHandler : WeatherEventHandlerType?
    var setEventHandlerCalled = false
    
    func setEventHandler(eventHandler: WeatherEventHandlerType) {
        setEventHandlerCalled = true
        
        weatherEventHandler = eventHandler
    }
}
