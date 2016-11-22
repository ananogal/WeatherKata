//
//  CityParser.swift
//  WeatherKata
//
//  Created by Ana Nogal on 21/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation

struct CityJSONKeys {
    static let name = "name"
    static let latitude = "latitude"
    static let longitude = "longitude"
}

class CityParser: CityParserType {
    
    func parse(data: Data) -> [City]? {
        if let results = try? validateData(data) {
            return parseCities(results)
        }
        return nil
    }
    
    private func validateData(_ data: Data) throws -> [AnyObject] {
        return try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as! [AnyObject]
    }
    
    private func parseCities(_ JSONResults: [AnyObject]) -> [City] {
        let results = JSONResults as! [[String: AnyObject]]
        return results.flatMap { (cityDictionary) in
            return parseCity(cityDictionary)
        }
    }
    
    private func parseCity(_ city: [String: AnyObject]) -> City {
        let name = city[CityJSONKeys.name] as? String ?? ""
        let latitude = city[CityJSONKeys.latitude] as? Float ?? 0.0
        let longitude = city[CityJSONKeys.longitude] as? Float ?? 0.0
        
        return City(name: name, latitude: latitude, longitude: longitude)
    }
}

