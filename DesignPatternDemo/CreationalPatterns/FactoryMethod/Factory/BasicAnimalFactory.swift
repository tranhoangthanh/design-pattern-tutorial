//
//  BasicAnimalFactory.swift
//  design_pattern
//
//  Created by TranHoangThanh on 2/15/22.
//

import Foundation

class BasicAnimalFactory : IAnimalFactory {
    var index = 0
    
    func createAnimal() -> IAnimal {
        
        if index == 0 {
            index += 1
            return Dog()
        }
        
        if index == 1 {
            index += 1
            return Cat()
        }
        
        if index == 2 {
            index = 0
            return Duck()
        }
        
        return Dog()
    }
    
}
