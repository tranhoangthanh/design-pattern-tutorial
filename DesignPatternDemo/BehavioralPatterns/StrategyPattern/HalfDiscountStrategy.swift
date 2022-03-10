//
//  HalfDiscountStrategy.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation

class HalfDiscountStrategy : IpromoteStrategy {
    func doDiscount(_ price: Double) -> Double {
        return price * 0.5
    }
}
