//
//  CounterView.swift
//  CounterDemo
//
//  Created by jean.333 on 6/14/25.
//

import SwiftUI

struct CounterView: View {
    /*
     @State attribute 는 local state 를 관리한다는 뜽시기 때문에 다른 화면에 상태를 전파할 수 없음.
     
     Local, non-persisted state
     */
    @State var count: Int = 0
    
    
    
    var body: some View {
        VStack {
            HStack {
                Button(action: { self.count -= 1 }) {
                    Text("-")
                }
                Text("\(count)")
                Button(action: { self.count += 1 }) {
                    Text("+")
                }
            }
            Button(action: {}) {
                Text("Is this prime?")
            }
            Button(action: {}) {
                Text("What's the \(ordinal(self.count)) prime?")
            }
        }
        .font(.title)
        .navigationTitle("Counter Demo")
    }
    
    private func ordinal(_ n: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .ordinal
        return formatter.string(for: n) ?? ""
    }
}

#Preview {
    CounterView()
}

