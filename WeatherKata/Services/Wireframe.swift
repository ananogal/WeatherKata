//
//  Wireframe.swift
//  WeatherKata
//
//  Created by Ana Nogal on 17/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

class Wireframe {
    func prepare(view: WeatherViewType) {
        let interactor = WeatherInteractor()
        view.setEventHandler(eventHandler: interactor as WeatherEventHandlerType)
    }
}
