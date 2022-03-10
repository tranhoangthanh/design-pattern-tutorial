//
//  MilkTeaDecorator.swift
//  design_pattern
//
//  Created by TranHoangThanh on 2/15/22.
//

import Foundation


class MilkTeaDecorator : IMilkTea {
    
    var milkTea : IMilkTea!
    
    init(inner : IMilkTea) {
        milkTea = inner
    }
    
    func cost() -> Double {
        return milkTea.cost()
    }
    
}

