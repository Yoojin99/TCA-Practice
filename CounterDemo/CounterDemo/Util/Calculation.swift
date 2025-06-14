//
//  Calculation.swift
//  CounterDemo
//
//  Created by jean.333 on 6/14/25.
//

import Foundation

func isPrime (_ p: Int) -> Bool {
    if p <= 1 { return false }
    if p <= 3 { return true }
    for i in 2...Int(sqrtf(Float(p))) {
        if p % i == 0 { return false }
    }
    return true
}
