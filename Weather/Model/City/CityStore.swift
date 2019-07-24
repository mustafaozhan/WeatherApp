//
//  CityStore.swift
//  Weather
//
//  Created by Mustafa Ozhan on 01/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI
import Combine

class CityStore: BindableObject {
    
    let willChange = PassthroughSubject<CityStore, Never>()
    
    var cities: [City] = [City(name: "Prague")] {
        didSet{
            willChange.send(self)
        }
    }
}
