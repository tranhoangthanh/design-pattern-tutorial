//
//  NoDiscountStrategy.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation


class NoDiscountStrategy : IpromoteStrategy {
    func doDiscount(_ price: Double) -> Double {
        return price
    }
}
