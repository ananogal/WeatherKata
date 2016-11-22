//
//  City.swift
//  WeatherKata
//
//  Created by Ana Nogal on 21/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation

struct City {
    let name: String
    let latitude: Float
    let longitude: Float
}

extension City: Equatable {}

func == (lhs: City, rls: City) -> Bool {
    return lhs.name == rls.name
        && lhs.latitude == rls.latitude
        && lhs.longitude == rls.longitude
}
