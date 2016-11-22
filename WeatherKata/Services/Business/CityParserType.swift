//
//  CityParserType.swift
//  WeatherKata
//
//  Created by Ana Nogal on 21/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation

protocol CityParserType {
    func parse(data: Data) -> [City]?
}
