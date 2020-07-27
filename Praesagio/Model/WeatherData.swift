//
//  WeatherData.swift
//  Praesagio
//
//  Created by Archangel on 21/07/20.
//  Copyright © 2020 Archangel. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}
struct Weather: Codable {
    let description: String
    let id: Int
}
