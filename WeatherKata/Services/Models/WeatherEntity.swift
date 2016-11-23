//
//  WeatherEntity.swift
//  WeatherKata
//
//  Created by Ana Nogal on 23/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

struct WeatherEntity {
    let latitude: Float
    let longitude: Float
    let cityName: String
    let icon: String
    let precipProbability: Int
    let temperature: Int
    let humidity: Int
}

extension WeatherEntity: Equatable {}

func ==(lhs: WeatherEntity, rhs: WeatherEntity) -> Bool {
    return lhs.latitude == rhs.latitude
        && lhs.longitude == rhs.longitude
        && lhs.cityName == rhs.cityName
        && lhs.icon == rhs.icon
        && lhs.precipProbability == rhs.precipProbability
        && lhs.temperature == rhs.temperature
        && lhs.humidity == rhs.humidity
}
