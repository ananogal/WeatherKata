//
//  PersistenceStoreType.swift
//  WeatherKata
//
//  Created by Ana Nogal on 20/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import Foundation

typealias DataResult = (_ data: Data?, _ error: Error?) -> Void

enum WeatherError : Error {
    case fileRead
    case parseCities
}

protocol WeatherPesistenceStoreType {
    var resourceReader: ResourceReaderType! {get}
    func getCities(completion: DataResult)
}
