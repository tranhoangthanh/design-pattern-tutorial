//
//  RandomAnimalFactory.swift
//  design_pattern
//
//  Created by TranHoangThanh on 2/15/22.
//

import Foundation

class RandomAnimalFactory : IAnimalFactory {
    func createAnimal() -> IAnimal {
        let randomInt = Int.random(in: 0..<3)
        if randomInt == 0 {
           return Dog()
        } else if randomInt == 1 {
           return Cat()
        } else {
            return Duck()
        }
    }
    
}
