//
//  AppState.swift
//  CounterDemo
//
//  Created by jean.333 on 6/14/25.
//

import Foundation

class AppState: ObservableObject {
    @Published var count = 0
    
    @Published var favoritePrimes: [Int] = []
}
