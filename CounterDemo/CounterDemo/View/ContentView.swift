//
//  ContentView.swift
//  CounterDemo
//
//  Created by jean.333 on 6/14/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var state: AppState
    
  var body: some View {
    NavigationView {
      List {
          NavigationLink(destination: CounterView(state: state)) {
          Text("Counter demo")
        }
        NavigationLink(destination: EmptyView()) {
          Text("Favorite primes")
        }
      }
      .navigationBarTitle("State management")
    }
  }
}

#Preview {
    ContentView(state: AppState())
}
