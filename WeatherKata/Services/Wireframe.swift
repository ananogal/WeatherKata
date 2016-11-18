//
//  Wireframe.swift
//  WeatherKata
//
//  Created by Ana Nogal on 17/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import UIKit

class Wireframe {
 
    func createWeatherController() -> WeatherTableViewController {
        return UIStoryboard().createWeatherTableViewController()
    }
    
}
