//
//  WeatherPesistenceStore.swift
//  WeatherKata
//
//  Created by Ana Nogal on 20/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation

struct BundleKeys {
    static let resourceName = "cities"
    static let resourceType = "json"
}

class WeatherPesistenceStore: WeatherPesistenceStoreType {
    let resourceReader: ResourceReaderType!
    
    init(resourceReader: ResourceReaderType) {
        self.resourceReader = resourceReader
    }
    
    func getCities(completion: DataResult) {
        resourceReader.read(resource: BundleKeys.resourceName, ofType: BundleKeys.resourceType, completion: {(result, error) in
            completion(result, error)
        })
    }
}
