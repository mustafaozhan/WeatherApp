//
//  NewCityView.swift
//  Weather
//
//  Created by Mustafa Ozhan on 01/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI

struct NewCityView : View {
    
    @EnvironmentObject var cityStore: CityStore
    
    @Binding var isAddingCity:Bool
    
    var body: some View {
        Text("New City View")
    }
}

#if DEBUG
struct NewCityView_Previews : PreviewProvider {
    static var previews: some View {
        NewCityView(isAddingCity: .constant(true))
    }
}
#endif
