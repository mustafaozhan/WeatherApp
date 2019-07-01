//
//  DailyWeather.swift
//  Weather
//
//  Created by Mustafa Ozhan on 01/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//


import SwiftUI

struct DailyWeather: Codable, Identifiable {
    
    var id: Date {
        return time
    }
    
    var time: Date
    var maxTemperature: Double
    var minTemperature: Double
    var icon: Weather.Icon
    
    enum CodingKeys: String, CodingKey {
        
        case time = "time"
        case maxTemperature = "temperatureHigh"
        case minTemperature = "temperatureLow"
        case icon = "icon"
        
    }
    
}
