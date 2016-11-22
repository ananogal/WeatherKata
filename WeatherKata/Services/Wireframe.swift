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
        let gateway = createGateway()
        
        return WeatherInteractor(gateway: gateway)
    }
    
    func createGateway() -> WeatherGatewayType {
        let store = createPersistenceStore()
        
        return WeatherGateway(store: store, cityParser: CityParser())
    }
    
    func createPersistenceStore() -> WeatherPesistenceStoreType {
        let resourceReader = ResourceReader()
        
        return WeatherPesistenceStore(resourceReader: resourceReader)
    }
}
