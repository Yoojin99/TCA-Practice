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
            if isPrime(self.state.count) {
                Text("\(self.state.count) is prime 🎉")
                
                if self.state.favoritePrimes.contains(self.state.count) {
                    Button(action: {
                        self.state.favoritePrimes.removeAll(where: {
                            $0 == self.state.count
                        })
                    }) {
                        Text("Remove from favorite primes")
                    }
                } else {
                    Button(action: {
                        self.state.favoritePrimes.append(self.state.count)
                    }) {
                        Text("Save to favorite primes")
                    }
                }
            } else {
                Text("\(self.state.count) is not prime :(")
            }
        }
    }
}
