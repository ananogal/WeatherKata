//
//  Wireframe.swift
//  WeatherKata
//
//  Created by Ana Nogal on 17/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

class Wireframe {
    func prepare(view: WeatherViewType, interactor: WeatherInteractorType) {
        let presenter = WeatherPresenter()
        interactor.setPresenter(presenter)
        
        view.setEventHandler(eventHandler: interactor as! WeatherEventHandlerType)
    }
    
    func createInteractor() -> WeatherInteractor {
        let gateway = WeatherGateway()
        return WeatherInteractor(gateway: gateway)
    }
}
