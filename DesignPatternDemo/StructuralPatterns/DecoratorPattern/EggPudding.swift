//
//  EggPudding.swift
//  design_pattern
//
//  Created by TranHoangThanh on 2/15/22.
//

import Foundation




class EggPudding : MilkTeaDecorator {
  
    override init(inner: IMilkTea) {
        super.init(inner: inner)
        
    }
    
    override func cost() -> Double {
        return 3 + milkTea.cost()
    }
}
