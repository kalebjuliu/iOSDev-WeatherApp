
//
//  WeatherMOdel.swift
//  Praesagio
//
//  Created by Archangel on 21/07/20.
//  Copyright © 2020 Archangel. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temprature: Double
    
    var tempratureString: String{
        return String(format: "%.1f", temprature)
    }
    
    var conditionName: String{
        switch temprature {
        case 0...23:
            return "Kinda cold i guess"
        case 23...40:
            return "The floor is lava"
        default:
            return "i dunno bro"
        }
    }
}
