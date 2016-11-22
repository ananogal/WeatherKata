//
//  ResourceReaderMock.swift
//  WeatherKata
//
//  Created by Ana Nogal on 20/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation
@testable import WeatherKata

class ResourcesReaderErrorMock: ResourceReaderType {
    func read(resource: String, ofType: String, completion: DataResult) {
        completion(nil, WeatherError.fileRead)
    }
}

class ResourcesReaderSuccessMock: ResourceReaderType {
    func read(resource: String, ofType: String, completion: DataResult) {
        completion(Data(), nil)
    }
}
