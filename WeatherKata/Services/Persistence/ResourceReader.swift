//
//  ResourceReader.swift
//  WeatherKata
//
//  Created by Ana Nogal on 20/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation

protocol ResourceReaderType {
    func read(resource: String, ofType: String, completion: DataResult)
}

class ResourceReader: ResourceReaderType {
    func read(resource: String, ofType: String, completion: DataResult) {
        if let path = Bundle.main.path(forResource: resource, ofType: ofType), let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            completion(data, nil)
        } else {
            completion(nil, WeatherError.fileRead)
        }
    }
}
