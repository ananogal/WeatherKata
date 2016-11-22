//
//  FakeData.swift
//  WeatherKata
//
//  Created by Ana Nogal on 21/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation
@testable import WeatherKata

class FakeData {
    class func createCityJSON() -> [[String: AnyObject]] {
        return [
            [
                "name": "London" as AnyObject,
                "latitude": 51.5074 as AnyObject,
                "longitude": -0.1278 as AnyObject
            ]
        ]
    }
    
    class func serialize(JSON: AnyObject) -> Data? {
        return try? JSONSerialization.data(withJSONObject: JSON, options: []) as Data
    }
    
    class func createTwoCitiesJSON() -> [[String: AnyObject]]{
        return [
            [
                "name": "London" as AnyObject,
                "latitude": 51.5074 as AnyObject,
                "longitude": -0.1278 as AnyObject
            ],
            [
                "name": "Lisbon" as AnyObject,
                "latitude": 38.7223 as AnyObject,
                "longitude": -9.1393 as AnyObject
            ]
        ]
    }
    
    class func createCity() -> City {
        return City(name: "London", latitude: 51.5074, longitude: -0.1278)
    }

}
