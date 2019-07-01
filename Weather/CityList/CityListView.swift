//
//  ContentView.swift
//  Weather
//
//  Created by Mustafa Ozhan on 01/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI

struct CityListView : View {
    
    @EnvironmentObject var cityStore: CityStore
    
    var body: some View {
        
        NavigationView {
            
            List {
                Section(header: Text("Your Cities")) {
                    ForEach(cityStore.cities) { city in
                        CityRow(city: city)
                    }
                }
            }.navigationBarTitle(Text("Weather"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        CityListView().environmentObject(CityStore())
    }
}
#endif
