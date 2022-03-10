//
//  AbstractAnimalFactory.swift
//  design_pattern
//
//  Created by TranHoangThanh on 2/15/22.
//

import Foundation


class AbstractAnimalFactory : IAnimalFactory {
    
    func createAnimal() -> IAnimal {
        return Dog()
    }
    
    
}
