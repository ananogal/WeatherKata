//
//  AppDelegate.swift
//  WeatherKata
//
//  Created by Ana Nogal on 15/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        setRootController()
        return true
    }
    
    func setRootController() {
        let controller = UIStoryboard().createWeatherTableViewController()
        Wireframe().prepare(view: controller)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = controller
        self.window?.makeKeyAndVisible()
    }
}
