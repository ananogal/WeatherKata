//
//  UIStoryboard+Controllers.swift
//  WeatherKata
//
//  Created by Ana Nogal on 18/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//
import UIKit

extension UIStoryboard {
    
    func main() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    func createWeatherTableViewController() -> WeatherTableViewController {
        return self.main().instantiateViewController(withIdentifier: String(describing:  WeatherTableViewController.self)) as! WeatherTableViewController
    }
}
