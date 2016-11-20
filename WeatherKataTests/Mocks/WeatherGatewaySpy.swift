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
    var getCitiesCalled = false
    
    func getCities(completion: DataResult) {
        getCitiesCalled = true
    }
}
