//
//  WeatherViewType.swift
//  WeatherKata
//
//  Created by Ana Nogal on 19/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation

protocol WeatherViewType {
    var weatherEventHandler : WeatherEventHandlerType? {get set}
    func setEventHandler(eventHandler: WeatherEventHandlerType)
}
