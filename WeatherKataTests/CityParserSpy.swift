//
//  CityParserSpy
//  WeatherKata
//
//  Created by Ana Nogal on 21/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation
@testable import WeatherKata

class CityParserSpy: CityParserType {
    var parseCalled = false
    var cities = [City]()
    
    func parse(data: Data) -> [City]? {
        parseCalled = true
        
        return cities
    }
}
