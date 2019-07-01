//
//  WeatherExtensions.swift
//  Weather
//
//  Created by Mustafa Ozhan on 01/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI

extension Weather{
    
    struct List<T: Codable & Identifiable>: Codable {
        
        var list: [T]
        
        enum CodingKeys: String, CodingKey {
            case list = "data"
        }
    }
    
    enum Icon: String, Codable {
        
        case clearDay = "clear-day"
        case clearNight = "clear-night"
        case rain = "rain"
        case snow = "snow"
        case sleet = "sleet"
        case wind = "wind"
        case fog = "fog"
        case cloudy = "cloudy"
        case partyCloudyDay = "partly-cloudy-day"
        case partyCloudyNight = "partly-cloudy-night"
        
        var image: Image {
            switch self {
            case .clearDay:
                return Image(systemName: "sun.max.fill")
            case .clearNight:
                return Image(systemName: "moon.stars.fill")
            case .rain:
                return Image(systemName: "cloud.rain.fill")
            case .snow:
                return Image(systemName: "snow")
            case .sleet:
                return Image(systemName: "cloud.sleet.fill")
            case .wind:
                return Image(systemName: "wind")
            case .fog:
                return Image(systemName: "cloud.fog.fill")
            case .cloudy:
                return Image(systemName: "cloud.fill")
            case .partyCloudyDay:
                return Image(systemName: "cloud.sun.fill")
            case .partyCloudyNight:
                return Image(systemName: "cloud.moon.fill")
            }
        }
        
    }
}
