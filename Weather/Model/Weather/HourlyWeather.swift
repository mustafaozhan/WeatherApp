//
//  HourlyWeather.swift
//  Weather
//
//  Created by Mustafa Ozhan on 01/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI

struct HourlyWeather: Codable, Identifiable {
    
    var id: Date {
        return time
    }
    
    var time: Date
    var temperature: Double
    var icon: Weather.Icon
    
}
