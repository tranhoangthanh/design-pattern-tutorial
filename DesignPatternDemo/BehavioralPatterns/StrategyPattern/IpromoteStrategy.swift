//
//  IpromoteStrategy.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation

protocol IpromoteStrategy {
    func doDiscount(_ price : Double) -> Double
}
