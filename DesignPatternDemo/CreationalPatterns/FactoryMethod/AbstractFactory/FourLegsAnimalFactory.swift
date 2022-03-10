//
//  FourLegsAnimalFactory.swift
//  design_pattern
//
//  Created by TranHoangThanh on 2/15/22.
//

import Foundation

//class FourLegsAnimalFactory : IAnimalFactory {
//    func createAnimal() -> IAnimal {
//        let randomInt = Int.random(in: 0..<3)
//        if randomInt == 0 {
//           return Dog()
//        } else {
//           return Cat()
//        }
//    }
//}

class FourLegsAnimalFactory : AbstractAnimalFactory {
    override func createAnimal() -> IAnimal {
        let randomInt = Int.random(in: 0..<3)
                if randomInt == 0 {
                   return Dog()
                } else {
                   return Cat()
                }
    }
}
