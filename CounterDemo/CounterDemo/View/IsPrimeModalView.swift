//
//  IsPrimeModalView.swift
//  CounterDemo
//
//  Created by jean.333 on 6/14/25.
//

import SwiftUI

struct IsPrimeModalView: View {
    @ObservedObject var state: AppState
    
    var body: some View {
        VStack {
            Text("I don't know if \(self.state.count) is prime")
            Button(action: {}) {
                Text("Save/remove to/from favorite primes")
            }
        }
    }
}
