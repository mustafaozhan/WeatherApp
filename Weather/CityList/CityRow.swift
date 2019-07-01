//
//  CityRow.swift
//  Weather
//
//  Created by Mustafa Ozhan on 01/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI

struct CityRow : View {
    
    @ObjectBinding var city: City
    
    var body: some View {
        HStack {
            Text(city.name)
            Spacer()
        }.padding()
    }
}

#if DEBUG
struct CityRow_Previews : PreviewProvider {
    static var previews: some View {
        CityRow(city: City(name: "Prague"))
            .previewLayout(.fixed(width: 300, height: 60))
    }
}
#endif
