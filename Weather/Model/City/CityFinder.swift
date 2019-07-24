//
//  CityFinder.swift
//  Weather
//
//  Created by Mustafa Ozhan on 02/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import Combine
import SwiftUI
import MapKit

class CityFinder: NSObject, BindableObject {
    
    var willChange = PassthroughSubject<CityFinder, Never>()
    
    var results: [String] = [] {
        didSet {
            willChange.send(self)
        }
    }
    
    private var searcher: MKLocalSearchCompleter
    
    override init() {
        results = []
        searcher = MKLocalSearchCompleter()
        super.init()
        searcher.resultTypes = .address
        searcher.delegate = self
    }
    
    func search(_ text: String) {
        searcher.queryFragment = text
    }
    
}

extension CityFinder: MKLocalSearchCompleterDelegate {
    
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        results = completer.results.map({ $0.title })
    }
    
}
