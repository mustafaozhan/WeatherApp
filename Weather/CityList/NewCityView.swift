//
//  NewCityView.swift
//  Weather
//
//  Created by Mustafa Ozhan on 01/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI

struct NewCityView : View {
    
    @Binding var isAddingCity: Bool
    @State private var search: String = ""
    
    @ObjectBinding var cityFinder: CityFinder = CityFinder()
    @EnvironmentObject var cityStore: CityStore
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    TextField("Search City", text: $search){
                        self.cityFinder.search(self.search)
                    }
                }
                
                Section {
                    ForEach(cityFinder.results,id: \.self) { result in
                        Button(action: {
                            self.addCity(from: result)
                            self.isAddingCity = false
                        }) {
                            Text(result)
                        }
                        .foregroundColor(.black)
                    }
                }
            }
            .navigationBarTitle(Text("Add City"))
                .navigationBarItems(leading: cancelButton)
                .listStyle(.grouped)
        }
    }
    
    private var cancelButton: some View {
        Button(action: {
            self.isAddingCity = false
        }) {
            Text("Cancel")
        }
    }
    
    private func addCity(from result: String) {
        let cityName = result.split(separator: ",").first ?? ""
        let city = City(name: String(cityName))
        cityStore.cities.append(city)
    }
    
}

#if DEBUG
struct NewCityView_Previews : PreviewProvider {
    static var previews: some View {
        NewCityView(isAddingCity: .constant(true))
    }
}
#endif
