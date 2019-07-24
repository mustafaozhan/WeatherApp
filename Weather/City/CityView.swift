//
//  CityView.swift
//  Weather
//
//  Created by Mustafa Ozhan on 02/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI

struct CityView : View {
    
    @ObjectBinding var city = City(name: "Prague")
    
    var body: some View {
        List {
            Section(header: Text("Now")) {
                CityHeaderView(city: city)
            }
            
//            Section(header: Text("Hourly")) {
//                CityHourlyView(city: city)
//            }
//
//            Section(header: Text("This week")) {
//                ForEach(city.weather?.week.list ?? []) { day in
//                    CityDailyView(day: day)
//                }
//            }
//            }
//            .navigationBarTitle(Text(city.name))
    }
    }
}

#if DEBUG
struct CityView_Previews : PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
#endif
